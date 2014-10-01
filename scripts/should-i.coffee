# Description:
#  should i
#
# Commands:
#   should i - should i
#

responses = [
  "You bet, I totally know what I'm talking about",
  "Man...dude...I don't know, ask me later",
  "You should probably consult an expert in the subject",
  "One sec, I'm shitting out a new movie"
]
module.exports = (robot) ->
  robot.respond /should i/i, (msg) ->
    msg.send msg.random responses
