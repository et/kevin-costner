# Description:
#   Hubot delivers a pic from Reddit's /r/foodporn frontpage
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot food me - Display the picture from /r/food me
#

url = require("url")

module.exports = (robot) ->
  robot.respond /food me/i, (msg) ->
    search = escape(msg.match[1])
    msg.http('http://www.reddit.com/r/FordPorn.json')
      .get() (err, res, body) ->
        result = JSON.parse(body)

        urls = [ ]
        for child in result.data.children
          if child.data.domain != "self.foodporn"
            urls.push(child.data.url)

        if urls.count <= 0
          msg.send "Couldn't find anything rad..."
          return

        rnd = Math.floor(Math.random()*urls.length)
        picked_url = urls[rnd]

        parsed_url = url.parse(picked_url)
        if parsed_url.host == "imgur.com"
          parsed_url.host = "i.imgur.com"
          parsed_url.pathname = parsed_url.pathname + ".jpg"

          picked_url = url.format(parsed_url)

        msg.send picked_url
