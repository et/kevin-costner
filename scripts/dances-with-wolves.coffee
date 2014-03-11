# Description:
#   Dances with wolves
#
# Commands:
#   dances - dances with wolves

responses = [
  "http://25.media.tumblr.com/c7aff4942c6f774b496496bd00e5a430/tumblr_mfpgm8y0l51qefgdko1_250.gif",
  "http://31.media.tumblr.com/a1063c25bfaecf9e5148a2e27c3cbb5d/tumblr_mfpgm8y0l51qefgdko2_250.gif",
  "http://24.media.tumblr.com/c54b1d5169609e0a95fe12f26b527685/tumblr_mfpgm8y0l51qefgdko10_r1_250.gif",
  "http://31.media.tumblr.com/0a2385267becdcaaa799f5f6f3ef3016/tumblr_mfpgm8y0l51qefgdko5_r2_250.gif",
  "http://24.media.tumblr.com/37fb9d68b49eaa8e6b1053e4f6bba658/tumblr_mfpgm8y0l51qefgdko6_r1_250.gif",
  "http://25.media.tumblr.com/05bc36933080231c617bdf14918cd878/tumblr_mfpgm8y0l51qefgdko7_r1_250.gif",
  "http://24.media.tumblr.com/ae2d1b902fd47b450dc2d317a45c8341/tumblr_mfpgm8y0l51qefgdko8_r1_250.gif",
  "http://24.media.tumblr.com/tumblr_mavxveBEyd1qivq6do1_500.jpg",
  "http://25.media.tumblr.com/3827ef37cf05291c2db8cd5fc369f9ca/tumblr_mk4p0fiagG1qllztgo10_250.gif",
  "http://24.media.tumblr.com/d03cb8756aab501afbfe717cdfb182ee/tumblr_mk4p0fiagG1qllztgo2_250.gif"
]
module.exports = (robot) ->
  robot.hear /dances|wolves/i, (msg) ->
    msg.send msg.random responses
