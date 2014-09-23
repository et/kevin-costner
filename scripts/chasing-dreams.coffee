# Description:
#   chasing dreams
#
# Commands:
#   chasing dreams - chasing dreams

responses = [
  "http://www.virginmedia.com/images/embarrassing-kevin-costner.jpg"
]
module.exports = (robot) ->
  robot.hear /chasing dreams/i, (msg) ->
    msg.send msg.random responses
