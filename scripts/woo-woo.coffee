# Description:
#   woo-woo
#
# Commands:
#   woo|whoo|pain train

responses = [
  "http://i.imgur.com/yrp8b.gif"
]
module.exports = (robot) ->
  robot.hear /\bwoo+\b|pain train/i, (msg) ->
    msg.send msg.random responses
