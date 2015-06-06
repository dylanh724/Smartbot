# Description:
#  Watch Github repositories with Hubot
#
# Dependencies: 
#  "request": "*"
#
# Configuration: 
#  HUBOT_WATCH_USERNAME
#  HUBOT_WATCH_PASSWORD
#  HUBOT_WATCH_IGNORED
#
# Commands: 
#  hubot watch <repository> - Add the repository to the watchlist
#  hubot watch list - Show the watched repositories
#
# Author:
#  nounoursheureux

request = require('request')

module.exports = (robot) ->
  if not process.env.HUBOT_WATCH_USERNAME or not process.env.HUBOT_WATCH_PASSWORD
    robot.send '','Please provide your Github credentials'
    return
  watched = []
  req_options = {
    json: true,
    auth: {
      user: process.env.HUBOT_WATCH_USERNAME,
      pass: process.env.HUBOT_WATCH_PASSWORD
    },
    headers: {
      'User-Agent': 'hubot-watch'
    }
  }
  robot.respond /watch (.+)\/(.+)/i, (res) ->
    repo = "#{res.match[1]}/#{res.match[2]}"
    if watched[repo]
      res.send 'I am already watching this repository'
    else
      req_options.url = "https://api.github.com/repos/#{repo}/events"
      request req_options, (err,response,obj) ->
        throw err if err
        if obj.message
          res.send obj.message
        else
          watched[repo] = obj[0].id
          res.send "Watching #{repo}"

  robot.respond /watch list/i, (res) ->
    for repo of watched
      res.send repo
  
  setInterval ->
    for repo of watched
      req_options.url = "https://api.github.com/repos/#{repo}/events"
      request req_options, (err, response, obj) ->
        if obj[0].id != watched[repo]
          robot.send '',repo + ": " + handleEvent obj[0] unless process.env.HUBOT_WATCH_IGNORED and process.env.HUBOT_WATCH_IGNORED.indexOf(obj[0].type) isnt -1
          watched[repo] = obj[0].id
  ,1000

handleEvent = (event) ->
  switch event.type
    when "IssuesEvent"
      return "#{event.actor.login} #{event.payload.action} issue ##{event.payload.issue.number}: #{event.payload.issue.title}"
    when "IssueCommentEvent"
      return "#{event.actor.login} commented on issue ##{event.payload.issue.number}: #{event.payload.comment.body}"
    when "PullRequestEvent"
      return "#{event.actor.login} #{event.payload.action} pull request ##{event.payload.pull_request.number}: #{event.payload.pull_request.title}"
    when "PushEvent"
      return "#{event.actor.login} pushed to #{event.payload.ref.replace('refs/heads/','')}"
    when "CreateEvent"
      return "#{event.actor.login} created #{event.payload.ref_type} #{event.payload.ref}"
    when "DeleteEvent"
      return "#{event.actor.login} deleted #{event.payload.ref_type} #{event.payload.ref}"
    when "GollumEvent"
      return "#{event.actor.login} #{event.payload.pages[0].action} the wiki page: #{event.payload.pages[0].title}"
    when "MemberEvent"
      return "#{event.actor.login} #{event.payload.action} #{event.payload.member.login} to the collaborators"
    when "WatchEvent"
      return "#{event.actor.login} gave a star"
    when "ForkEvent"
      return "#{event.actor.login} forked to #{event.payload.forkee.full-name}"
    else
      return "Cannot handle event type: #{event.type}"
