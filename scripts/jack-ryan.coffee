# Description:
#   Jack Ryan
#
# Commands:
#   jack ryan - jack ryan

responses = [
  "http://upload.wikimedia.org/wikipedia/en/a/a8/Jack_Ryan_Shadow_Recruit_poster.jpg"
]
module.exports = (robot) ->
  robot.hear /jack ryan|shadow recruit/i, (msg) ->
    msg.send msg.random responses
