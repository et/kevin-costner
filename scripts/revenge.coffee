# Description:
#   Revenge
#
# Commands:
#   revenge - Reply with revenge
#

responses = [
  "http://upload.wikimedia.org/wikipedia/en/c/cf/RevengePoster.jpg",
  "https://i.chzbgr.com/maxW500/6600654848/h6CED29F3.jpg"
]
module.exports = (robot) ->
  robot.hear /revenge/i, (msg) ->
    msg.send msg.random responses
