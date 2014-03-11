# Description:
#   Waterworld
#
# Commands:
#   waterworld - Reply with waterworld

responses = [
  "http://31.media.tumblr.com/e41ea04a78523b0d3fe09055fc2670b3/tumblr_mqpjhxRJVb1rob81ao1_250.gif",
  "http://24.media.tumblr.com/397a4b738d97faedd85197ed76ef447c/tumblr_mqpjhxRJVb1rob81ao2_r1_250.gif",
  "http://25.media.tumblr.com/f27e131864a1dba682606857752319f1/tumblr_mqpjhxRJVb1rob81ao6_r1_250.gif",
  "http://24.media.tumblr.com/032e9677008649dae089462daf804c3a/tumblr_mqpjhxRJVb1rob81ao3_r1_250.gif",
  "http://24.media.tumblr.com/359b5dc83a44947bb38b0100ae70f5b5/tumblr_mqpjhxRJVb1rob81ao4_r1_250.gif",
  "http://24.media.tumblr.com/f99e8d1df2939f4330019fe6bec65cdb/tumblr_mqpjhxRJVb1rob81ao8_r1_250.gif",
  "http://i.telegraph.co.uk/multimedia/archive/01434/water_1434950c.jpg"
]
module.exports = (robot) ->
  robot.hear /waterworld/i, (msg) ->
    msg.send msg.random responses
