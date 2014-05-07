# Description:
#   silverado
#
# Commands:
#   silverado - silverado

responses = [
  "http://37.media.tumblr.com/e4b712938a6673e9c0c20a2ebcc08414/tumblr_mmnq5r6Tqq1qlpk58o1_500.gif"
]
module.exports = (robot) ->
  robot.hear /silverado/i, (msg) ->
    msg.send msg.random responses
