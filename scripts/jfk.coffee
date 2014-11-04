# Description:
#   JFK
#
# Commands:
#   jfk - jfk

responses = [
  "http://upload.wikimedia.org/wikipedia/en/8/84/JFK-poster.png",
  "http://www.themoviescene.co.uk/reviews/_img/148-2.jpg",
  "http://40.media.tumblr.com/ddd437cfe6bbaadfcb24e37f068859d5/tumblr_mx31tmG9M61qaqkllo1_1280.jpg"

]
module.exports = (robot) ->
  robot.hear /jfk/i, (msg) ->
    msg.send msg.random responses
