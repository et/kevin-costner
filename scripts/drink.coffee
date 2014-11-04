# Description:
#   drink someone
#
# Commands:
#   robot <trigger> @someone
#   <trigger - one of beer, coffee, wine, cider....ahh getting drunk

url = require("url")

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
    msg.send "I've got beer, coffee, cider, water, latte, wine, and orange drink"

  robot.respond /(beer|coffee|cider|water|latte|wine|orange drink) (@\w+)/i, (msg) ->
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
           msg.send "http://1.bp.blogspot.com/-MlSFVxK6yxU/Uk79uChpImI/AAAAAAAAAJ8/wmnZL9uTFZU/s1600/Alice1.jpg"
