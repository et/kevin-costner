# Description:
#  Please review
#
# Commands:
#   review - review
#

responses = [
  "Looks good, ship it",
  "This is the greatest code ever written",
  "This will make us millions!",
  "I'd get a second opinion",
  "(thumbsup)"
]
module.exports = (robot) ->
  robot.respond /please review|review/i, (msg) ->
    msg.send msg.random responses
