# Description:
#   Magic
#
# Commands:
#   magic - magic

responses = [
  "http://images.junkee.com/wp-content/uploads/2013/12/shia-labeouf-magic-gif.gif",
  "http://37.media.tumblr.com/d76fbc8973a9aa496b9cfc38ec6b5e44/tumblr_mo5u2lsukQ1s9362xo1_250.gif",
  "http://i.imgur.com/SiuR4Ge.gif",
  "http://i.imgur.com/cR8gJ6z.gif",
  "http://i.imgur.com/6eUluFE.gif",
  "http://i.imgur.com/jVyohs1.gif",
  "http://media.giphy.com/media/23yGgOo9TQVqw/giphy.gif"
]
module.exports = (robot) ->
  robot.hear /magic/i, (msg) ->
    msg.send msg.random responses
