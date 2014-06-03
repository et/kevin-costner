# Description:
#   Elmo
#
# Commands:
#   elmo - Reply with elmo
#

responses = [
  "http://bday-parties.com/images/elmo.gif"
]
module.exports = (robot) ->
  robot.hear /elmo/i, (msg) ->
    msg.send msg.random responses
