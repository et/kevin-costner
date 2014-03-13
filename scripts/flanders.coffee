# Description:
#   Flanders
#
# Commands:
#   flanders - Reply with flanders

responses = [
  "http://i.imgur.com/dT1QnII.gif",
  "http://31.media.tumblr.com/b8cdb894ae53d49ceb0a10ae5cd2c2df/tumblr_mov63nwrBi1r2daiko1_500.gif",
  "http://25.media.tumblr.com/tumblr_ma59xr2hPo1qatgt2o1_1280.jpg",
  "http://24.media.tumblr.com/a32d675d140f32e7947587f549b5d284/tumblr_mr3a1tfndN1swwxlpo1_500.gif",
  "http://24.media.tumblr.com/957179b5cb468454a9d3b9e2d37b60bb/tumblr_mvflp6gpNW1s7qiu1o1_500.jpg",
  "http://i.minus.com/ixi2MH0MV7Rnb.gif",
  "http://media.giphy.com/media/tier2PRHqKzEQ/giphy.gif",
  "http://i.imgur.com/UmtEA89.jpg",
  "http://i.imgur.com/3CSzQ.jpg",
  "http://i.imgur.com/jMdue1f.png",
  "http://i.imgur.com/swGU7i0.gif",
  "http://i.imgur.com/O581CS3.png",
  "http://i.imgur.com/rOHSTVB.gif",
  "http://www.youtube.com/watch?v=LkGUGmhHX-0",
  "http://www.youtube.com/watch?v=qKIrADhZc8k",
  "http://media.giphy.com/media/a9A4vGvPpmREY/giphy.gif",
  "http://24.media.tumblr.com/tumblr_m7nqkn9Ly11rxlru1o1_500.jpg",
  "http://img1.wikia.nocookie.net/__cb20100419011935/simpsons/images/1/15/NedFlanders3.gif",
  "http://media-cache-ec0.pinimg.com/236x/49/59/50/49595096b2cdb6404942f64f9d334065.jpg",
  "http://global3.memecdn.com/oh-flanders_o_1946705.jpg"
]
module.exports = (robot) ->
  robot.hear /flanders|Hi-dilly-ho|neighborino|okely dokely/i, (msg) ->
    msg.send msg.random responses
