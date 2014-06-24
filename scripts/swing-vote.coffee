# Description:
#   Swing vote
#
# Commands:
#   swing vote - Reply with waterworld

responses = [
  "http://upload.wikimedia.org/wikipedia/en/d/d5/Swing_vote_08.jpg",
  "http://31.media.tumblr.com/419fcc2524d0ab9e8530bbdccf1024cc/tumblr_n35rpy88ya1r8r71do1_r1_400.gif",
  "http://25.media.tumblr.com/0c247452670c01cbdc6f1e36cc534077/tumblr_n3dl41hzi71qbwakso8_500.gif",
  "http://37.media.tumblr.com/be5baf68a2747d1e0ea923a5df2c2142/tumblr_mowspteUzp1ria27qo1_400.gif",
  "http://37.media.tumblr.com/b8d8f38f51dabf7dbc92e4c1aff66b54/tumblr_mkw8mhWBl11s20gm1o1_400.gif"

]
module.exports = (robot) ->
  robot.hear /swing vote/i, (msg) ->
    msg.send msg.random responses
