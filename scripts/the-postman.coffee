# Description:
#   The Postman
#
# Commands:
#   the postman - the postman

responses = [
  "http://upload.wikimedia.org/wikipedia/en/7/74/Postman_ver3.jpg"
]
module.exports = (robot) ->
  robot.hear /postman/i, (msg) ->
    msg.send msg.random responses
