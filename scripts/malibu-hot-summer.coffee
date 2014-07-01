# Description:
#   malibu hot summer
#
# Commands:
#   malibu hot summer - malibu hot summer

responses = [
  "http://terapeliculas.com/img/4NNt:22Lr.3TKLr-L3K0.ps32L3rnTY2O2O9IaOABzO1qjUbBoOGIaOGIarCaCWkgNDApoUA6Hvy&oOi@@._9H_MW_h5E,E,,_.1tn.png"
]
module.exports = (robot) ->
  robot.hear /malibu hot summer/i, (msg) ->
    msg.send msg.random responses
