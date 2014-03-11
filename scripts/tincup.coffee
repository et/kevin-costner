# Description:
#   Tin cup
#
# Commands:
#   tincup - tin cup

responses = [
  "http://i.imgur.com/FMIuFco.jpg"
]
module.exports = (robot) ->
  robot.hear /tincup|tin cup/i, (msg) ->
    msg.send msg.random responses
