# Description:
#   woo-woo
#
# Commands:
#   woo|whoo|pain train

responses = [
  "http://i.imgur.com/yrp8b.gif",
  "http://www.reactiongifs.com/r/wnnng.gif",
  "http://www.reactiongifs.com/r/poppin1.gif",
  "http://www.reactiongifs.com/wp-content/uploads/2013/04/celebrate.gif"
]
module.exports = (robot) ->
  robot.hear /\bwoo+\b|pain train/i, (msg) ->
    msg.send msg.random responses
