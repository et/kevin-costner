# Description:
#   Flanders
#
# Commands:
#   flanders - Reply with flanders
#

responses = [
  "Looks good, ship it",
  "This is the greatest code ever written",
  "This will make us millions!",
  "I'd get a second opinion"
]
module.exports = (robot) ->
  robot.respond /review/i, (msg) ->
    msg.send msg.random responses
