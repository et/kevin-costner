# Description:
#   Man of Steel
#
# Commands:
#   man of steel - man of steel

responses = [
  "http://images4.fanpop.com/image/photos/20900000/Kevin-Costner-will-play-Jonathan-Kent-man-of-steel-20949257-560-283.jpg"
]
module.exports = (robot) ->
  robot.hear /man of steel/i, (msg) ->
    msg.send msg.random responses
