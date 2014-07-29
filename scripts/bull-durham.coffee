# Description:
#   !kyle
#
# Commands:
#   !kyle - Reply with kyle

responses = [
  "https://s3.amazonaws.com/uploads.hipchat.com/45727/306033/D6SQIZKD7rsl5ut/output1.gif"
]
module.exports = (robot) ->
  robot.hear /bull durham/i, (msg) ->
    msg.send msg.random responses
