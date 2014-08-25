# Description:
#   night shift
#
# Commands:
#   night shift - Reply with night shift

responses = [
  "http://upload.wikimedia.org/wikipedia/en/f/fc/Night_shift.jpg"
]
module.exports = (robot) ->
  robot.hear /night shift/i, (msg) ->
    msg.send msg.random responses
