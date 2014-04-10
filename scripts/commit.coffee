# Description:
#   Tin cup
#
# Commands:
#   commit - commit

responses = [
  "http://i.minus.com/ibsIYErxdshECt.gif"
]
module.exports = (robot) ->
  robot.hear /commit|death gap/i, (msg) ->
    msg.send msg.random responses
