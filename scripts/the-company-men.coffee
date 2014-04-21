# Description:
#   The Company Men
#
# Commands:
#   the company men - Reply with the company men
#

responses = [
  "http://www.entertainmentwallpaper.com/images/desktops/movie/the_company_men01.jpg",
  "http://www.hotflick.net/flicks/2010_The_Company_Man/010TCM_Kevin_Costner_002.jpg",
  "http://24.media.tumblr.com/tumblr_lsitb0gL7o1qh4fefo1_400.gif"
  "Why did I take the role in 'The Company Men'? Find out here: http://www.imdb.com/title/tt1172991/board/nest/175267671?ref_=tt_bd_4"
  "Remember the scene at the construction site when Bobby is carrying four cups of coffee in a cardboard holder. The way he's carrying and moving it's obvious that the cups are empty. Pssssh. Ben Affleck...more like Bad Actor."
]
module.exports = (robot) ->
  robot.hear /company men/i, (msg) ->
    msg.send msg.random responses
