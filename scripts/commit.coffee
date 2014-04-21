# Description:
#   Tin cup
#
# Commands:
#   commit - commit

responses = [
  "http://i.minus.com/ibsIYErxdshECt.gif",
  "http://i.imgur.com/HuwGQFf.gif",
  "http://media.giphy.com/media/vvelcuIOPCLHq/giphy.gif",
  "http://media.giphy.com/media/8SgT7mFk14fkY/giphy.gif",

]
module.exports = (robot) ->
  robot.hear /commit|death gap/i, (msg) ->
    msg.send msg.random responses
