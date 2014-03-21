# Description:
#   woo-woo
#
# Commands:
#   woo|whoo|pain train

responses = [
  "http://i.imgur.com/yrp8b.gif"
]
module.exports = (robot) ->
  robot.hear /woo|whoo|pain train/i, (msg) ->
    msg.send msg.random responses
