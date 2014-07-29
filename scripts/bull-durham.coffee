# Description:
#   !kyle
#
# Commands:
#   !kyle - Reply with kyle

responses = [
  "http://www.okmoviequotes.com/wp-content/uploads/2014/06/101-Bull-Durham-quotes.gif",
  "http://stream1.gifsoup.com/view1/3483917/bull-durham-o.gif",
  "http://38.media.tumblr.com/tumblr_ltlbcesrhs1qig9p5o1_400.gif"
]
module.exports = (robot) ->
  robot.hear /bull durham/i, (msg) ->
    msg.send msg.random responses
