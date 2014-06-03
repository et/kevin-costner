# Description:
#   Elmo
#
# Commands:
#   elmo - Reply with elmo
#

responses = [
  "http://bday-parties.com/images/elmo.gif",
  "https://i.imgur.com/UP70k.gif",
  "http://24.media.tumblr.com/b728d7ca2ba7acf6bbc6249a9b88bc72/tumblr_mrbts2U1Uh1swwqebo1_400.gif"
]
module.exports = (robot) ->
  robot.hear /elmo/i, (msg) ->
    msg.send msg.random responses
