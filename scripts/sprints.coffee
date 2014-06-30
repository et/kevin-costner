# Description:
#   Tracks when stuff is due
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot sprints - List all sprints
#   hubot add sprint Thing - Add a sprint named 'Thing'
#   hubot delete sprint Thing - Remove a sprint named "Thing"
#

module.exports = (robot) ->

  robot.respond /(add) sprint (.*) ?$/i, (msg) ->
    name = msg.match[2]

    robot.brain.data.sprints ?= []

    robot.brain.data.sprints.push { name: name }
    msg.send 'Sprint "' + name + '" added'

  robot.respond /(delete) sprint (.*) ?$/i, (msg) ->
    name = msg.match[2]

    robot.brain.data.sprints ?= []

    length_before = robot.brain.data.sprints.length

    index_of = -1
    for deadline, i in robot.brain.data.sprints
      if deadline.name == name
        index_of = i

    robot.brain.data.sprints.splice( index_of, 1 ) if -1 != index_of

    if length_before > robot.brain.data.sprints.length
      msg.send 'Removed sprint "' + name + '"'
    else
      msg.send 'I couldn\'t find that sprint.'

  robot.respond /sprints/i, (msg) ->
    robot.brain.data.sprints ?= []

    if robot.brain.data.sprints.length > 0
      sprints = robot.brain.data.sprints.map (sprint) ->
        name = sprint.name
        name

      msg.send "Sprints:\n\n" + sprints.join "\n"

    else
      msg.send "I'm not currently tracking any sprints. Why don't you add one?"
