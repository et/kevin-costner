# Description:
#   Tin cup
#
# Commands:
#   costnerfact

responses = [
  "My father had many careers from a ditch digger to an electric line servicer for Southern California Edison.  Because of this my family moved frequently during my childhood.",
  'Despite my undoubtedly successful career, I have been nominated for 16 Razzie Awards.  No publicity is bad publicity? Regardless of these dubious honors, I\'ve won the Best Picture and Best Director Oscars for "Dances with Wolves" (1990), for which I was also nominated for Best Actor.',
  'While trying to break into Hollywood as an actor, I gave bus tours to stars\' Los Angeles homes. Now, that tour probably stops at my house.',
  'While at Cal State Fullerton studying business, I began taking acting lessons five nights a week.',
  'After marrying my college sweetheart and taking a marketing job in Orange County, I randomly met legendary actor Richard Burton on a return flight from his honeymoon in Mexico. After I explained my dream to be an actor, Burton told me not to hold back if acting was what I truly wanted. It seems sometimes the stars do align!',
  'When I graduated high school, I was surprisingly only 5\'2" despite eventually growing to be 6\'1". I stioll haven\'t gotten over being short',
  'Shockingly, I was a three-sport varsity athlete before my growth spurts. My love for sports can be seen with roles in such films as "Bull Durham" and "For Love of the Game."',
  'My favorite genre is the Western and I own a 165 acre ranch outside of Aspen. A man after my own heart!',
  'I announced Major League Baseball\'s All Century Team at the 1999 All Star game at Fenway Park.',
  '"Air Force One" (1997) was written specifically for me (I even helped develop the film), but I had to pass due to work delays with my own directorial project "The Postman" (1997). I called up Harrison Ford personally to offer him the now iconic role. Interestingly enough, I got both the lead roles in films "Dragonfly" (2002) and "JFK" (1991) as a result of Harrison Ford turning down the parts. "Air Force One" became one of the highest grossing films of 1997, while "The Postman" was a commercial and critical failure, but it seems all\'s well that ends well.',
  'I have seven children with three separate women. My first wife, Cindy Costner, and I had three children together. After our divorce, I had a son with girlfriend Bridget Rooney, and later got remarried to Christine Baumgartner, with whom I also have three children.',
  'I reportedly turned down a role in "Platoon" (1986) because I felt it portrayed American soldiers negatively. My older brother was a Vietnam veteran and I didn\'t want to insult him.',
  'I am the lead singer of the country/rock band "Kevin Costner and Modern West." In 2007, our group went on a worldwide tour and had sold out shows in Istanbul and Rome, leaving little doubt that I truly am an international star.',
  'I am a skilled equestrian and I do my own riding in all my films, including the memorable buffalo hunt scene in "Dances With Wolves" in which I ride bareback and, at one point, without holding the reins.',
  'My role in "Bull Durham" (1988) was originally written for Kurt Russell.',
  'Two of the domesticated buffalo used in the iconic "Dances With Wolves" were actually borrowed from legendary musician Neil Young. Perhaps ironically, Young was in the band "Buffalo Springfield" back in the \'60s.',
  'Formerly a registered Republican, I am friendly with the Bush family and have golfed with both President George Bush and President Ronald Reagan several times in the early 1990s. I have since registered Independent and even backed President Bill Clinton in the Presidential Race.',
  'I was inspired by the 1962 film, "How the West Was Won."',
  'I was born in California',
  'I was born on January 18th, 1955',
  'I\'m a Capricorn',
  'In 1996, I lived with supermodel Elle Macpherson\nhttp://upload.wikimedia.org/wikipedia/commons/3/3a/Elle_Macpherson_2011.jpg\nme-wow!'
]
module.exports = (robot) ->
  robot.hear /costnerfact|costner fact|costnermebro|costner me bro/i, (msg) ->
    msg.send msg.random responses
