# Description:
#   Allows sprints to be added to kevin costner
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot sprint add <task> - Add a sprint
#   hubot sprint list tasks - List the sprints
#   hubot sprint delete <task number> - Delete a sprint

class Sprints
  constructor: (@robot) ->
    @cache = []
    @robot.brain.on 'loaded', =>
      if @robot.brain.data.sprints
        @cache = @robot.brain.data.sprints

  nextNum: ->
    maxSprintNum = if @cache.length then Math.max.apply(Math,@cache.map (n) -> n.num) else 0
    maxSprintNum++
    maxSprintNum

  add: (sprintStr) ->
    task = {num: @nextNum(), sprint: sprintStr}
    @cache.push task
    @robot.brain.data.sprints = @cache
    task

  all: -> @cache

  deleteByNumber: (num) ->
    index = @cache.map((n) -> n.num).indexOf(parseInt(num))
    sprint = @cache.splice(index, 1)[0]
    @robot.brain.data.sprints = @cache
    sprint


module.exports = (robot) ->
  sprints = new Sprints robot

  robot.respond /(sprint add|add sprint) (.+?)$/i, (msg) ->
    sprint = sprints.add msg.match[2]
    msg.send "Sprint added: ##{sprint.num} - #{sprint.sprint}"
    msg.send 'yay'
    msg.send 'http://imstars.aufeminin.com/stars/fan/kevin-costner/kevin-costner-20070314-225769.jpg'

  robot.respond /(sprint delete|delete sprint) #?(\d+)/i, (msg) ->
    sprintNum = msg.match[2]
    sprint = sprints.deleteByNumber sprintNum
    msg.send "Deleting sprint: ##{sprint.num} - #{sprint.sprint}..."
    msg.send 'DESTROYED!!!'
    msg.send "http://www.gunsandammo.com/wp-content/blogs.dir/2/files/8-examples-of-hollywood-anti-gun-hypocrisy/kevin-costner-dances-with-wolves-1990.jpg"

  robot.respond /(sprint list|list sprints)/i, (msg) ->
    if sprints.all().length > 0
      response = ""
      for sprint, num in sprints.all()
        response += "##{sprint.num} - #{sprint.sprint}\n"
      msg.send response
    else
      msg.send "There are no sprints"
