# Description:
#   Magic
#
# Commands:
#   magic - magic

responses = [
  "http://images.junkee.com/wp-content/uploads/2013/12/shia-labeouf-magic-gif.gif",
  "http://37.media.tumblr.com/d76fbc8973a9aa496b9cfc38ec6b5e44/tumblr_mo5u2lsukQ1s9362xo1_250.gif"
]
module.exports = (robot) ->
  robot.hear /magic/i, (msg) ->
    msg.send msg.random responses