# Description:
#   drink someone
#
# Commands:
#   robot <trigger> @someone
#   <trigger - one of beer, coffee, wine, cider....ahh getting drunk

url = require("url")

smoothies = [
  "http://itzlinz.com/wp-content/uploads/2013/02/smoothie.jpg",
  "http://media-cache-ak0.pinimg.com/236x/c1/e3/96/c1e396f529237f56ef1eaed9afe9114d.jpg",
  "http://bestbuysmoothiemaker.com/wp-content/uploads/2010/11/smoothie-with-fruits.jpg",
  "http://s2.djyimg.com/n3/eet-content/uploads/2014/04/shutterstock_102354544-676x450.jpg"
]

lattes = [
  "https://milklife.com/sites/default/files/styles/original/public/main_image/Recipe/2013/09/18/Protein-Packed%20Latte_square.jpg",
  "http://b-i.forbesimg.com/robertpassikoff/files/2013/09/latte.jpg",
  "http://cdn2.thatsnerdalicious.com/wp-content/uploads/2011/12/mario-latte-art.jpg",
]

getMeADrinkBeeyotch = (msg, subreddit, drink) ->
  msg.http("http://www.reddit.com/r/#{subreddit}.json")
    .get() (err, res, body) ->
      result = JSON.parse(body)

      urls = [ ]
      for child in result.data.children
        if child.data.domain != "self.#{subreddit}"
          urls.push(child.data.url)

      if urls.count <= 0
        msg.send "Couldn't find any #{drink}..."
        return

      rnd = Math.floor(Math.random()*urls.length)
      picked_url = urls[rnd]

      parsed_url = url.parse(picked_url)
      if parsed_url.host == "imgur.com"
        parsed_url.host = "i.imgur.com"
        parsed_url.pathname = parsed_url.pathname + ".jpg"

        picked_url = url.format(parsed_url)

      msg.send picked_url

module.exports = (robot) ->
  robot.respond /list drinks/i, (msg) ->
    msg.send "I've got beer, coffee, cider, water, latte, wine, whey smoothie, and orange drink"

  robot.respond /(beer|coffee|cider|water|latte|wine|whey smoothie|orange drink) (@\w+)/i, (msg) ->
    drink = msg.match[1]
    recipient = msg.match[2]
    msg.send "Sending a #{drink} to #{recipient}"

    subreddit = switch drink
      when 'coffee'
        'cafe'
      when 'beer'
        'beerporn'
      when 'cider'
        'ciderporn'
      when 'water'
        'waterporn'

     if subreddit
      getMeADrinkBeeyotch msg, subreddit, drink
     else
       switch drink
         when 'wine'
           msg.send "https://www.youtube.com/watch?v=IfL_PwWdNGU"
         when 'orange drink'
           msg.send "http://i.imgur.com/OC4sh1n.jpg"
         when 'latte'
           msg.send msg.random lattes
         when 'whey smoothie'
           msg.send msg.random smoothies
