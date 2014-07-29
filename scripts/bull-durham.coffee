# Description:
#   !kyle
#
# Commands:
#   !kyle - Reply with kyle

responses = [
  "http://www.okmoviequotes.com/wp-content/uploads/2014/06/101-Bull-Durham-quotes.gif"
]
module.exports = (robot) ->
  robot.hear /bull durham/i, (msg) ->
    msg.send msg.random responses
