# Description:
#   open range
#
# Commands:
#   open range - open range

responses = [
  "http://ia.media-imdb.com/images/M/MV5BMTg4MDYwNjAzNF5BMl5BanBnXkFtZTYwNTY0MDM3._V1_SX640_SY720_.jpg",
  "http://media2.firstshowing.net/firstshowing/img/kevincostner-cameradirecting-oldtsr.jpg",
  "http://www.cowboysindians.com/Blog/August-2013/Weekend-Western-Open-Range/Kevin-Costner-Open-Range.jpg",
  "http://www.posters.ws/images/826794/open_range_uk_quad.jpg",
  "http://images.forwallpaper.com/files/images/1/13b7/13b7e071/315021/kevin-costner.jpg",
  "http://www.empireonline.com/images/features/movie-finishing-moves/dvd-grabs/37b.jpg"
]
module.exports = (robot) ->
  robot.hear /open range/i, (msg) ->
    msg.send msg.random responses
