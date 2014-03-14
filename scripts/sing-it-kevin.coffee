# Description:
#   Tin cup
#
# Commands:
#   tincup - tin cup

responses = [
  'http://www.youtube.com/watch?v=CpgmOObaTE8',
  'http://www.youtube.com/watch?v=kgqXbRtaN38',
  'http://www.youtube.com/watch?v=jVwhfCkl1o4',
  'http://www.youtube.com/watch?v=9Z4DShRkUEc',
  'http://www.youtube.com/watch?v=Ru_c4EuDnTE',
  'http://www.youtube.com/watch?v=YrHYCIiPkV8',
  'http://www.youtube.com/watch?v=m94fN28eNFk',
  'http://www.youtube.com/watch?v=W7-GW0Y0d6E',
  'http://www.youtube.com/watch?v=LtUWwB836lQ'
]
module.exports = (robot) ->
  robot.hear /sing/i, (msg) ->
    msg.send msg.random responses
