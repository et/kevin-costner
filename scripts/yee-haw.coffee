# Description:
#   woo-woo
#
# Commands:
#   woo|whoo|pain train

responses = [
  "https://www.youtube.com/watch?v=VcDy8HEg1QY",
  "http://en.wikipedia.org/wiki/Cotton-Eyed_Joe",
  "http://www.wikihow.com/Do-the-Cotton-Eyed-Joe-Dance",
  "http://37.media.tumblr.com/25f6c94d3047b86726876751f572539d/tumblr_molemydHV81rlkkpyo1_500.jpg",
  "http://37.media.tumblr.com/ab5dc5702447163e41e5c116425eb9a3/tumblr_mpouezQl7o1qgaktlo1_500.jpg",
  "http://37.media.tumblr.com/b7eac2fa4ac3bfc24267dacca3f50fd2/tumblr_mmyz5zvBnC1rdiwc4o1_500.gif",
  "http://24.media.tumblr.com/b0f24d275c1a6fb3de2b96e5fdae4a67/tumblr_mpsan7XNRL1s4yfn5o1_250.gif",
  "http://37.media.tumblr.com/f92a7989d53f7b3f9b1197271701b7db/tumblr_mpsan7XNRL1s4yfn5o4_250.gif"
]
module.exports = (robot) ->
  robot.hear /\by+e+h+a+w+\b/i, (msg) ->
    msg.send msg.random responses
