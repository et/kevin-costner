# Description:
#   wolfbuddy
#
# Commands:
#   wolfbuddy

responses = [
  "https://dl.dropboxusercontent.com/u/45595626/photo%20(6).JPG"
]
module.exports = (robot) ->
  robot.hear /wolfbuddy|wolf buddy/i, (msg) ->
    msg.send msg.random responses
