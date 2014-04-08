# Description:
#   The Guardian
#
# Commands:
#   the guardian - the guardian

responses = [
  "http://www.reelingreviews.com/theguardianpic.jpg",
  "http://www.movies-wallpapers.net/Movies/The%20Guardian/The%20Guardian-06.jpg",
  "http://weaponsman.com/wp-content/uploads/2013/09/The-Guardian-01.jpg",
  "http://images7.alphacoders.com/321/321917.jpg"
]
module.exports = (robot) ->
  robot.hear /guardian/i, (msg) ->
    msg.send msg.random responses
