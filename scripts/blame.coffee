# Description:
#   !blame
#
# Commands:
#   !blame <trigger>

responses = [
  ", you're worse than my last movie.",
  ", if there was a market for bad ideas I'd want drilling rights to your head.",
  ", you're worse than my first movie.",
  ", your parents wouldn't happen to be siblings, would they?",
  ", http://www.youtube.com/watch?v=tKOfAbJShXM"
]
module.exports = (robot) ->
  robot.hear /!blame (.*)/i, (msg) ->
    msg.send msg.match[1] + msg.random(responses)
