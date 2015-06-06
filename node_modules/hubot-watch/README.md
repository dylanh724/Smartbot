# hubot-watch

Watch Github repositories with Hubot

## Installation 

Install the script:  `npm install hubot-watch`       
And add `hubot-watch` to the `external-scripts.json` file.            

## Configuration

You need to provide your Github credentials, or Hubot will only have a limited access to the API.          
Use the `HUBOT_WATCH_USERNAME` and `HUBOT_WATCH_PASSWORD` environment variables for that.       
Example:      

```
HUBOT_WATCH_USERNAME="myusername" HUBOT_WATCH_PASSWORD="mypassword" ./bin/hubot
```

If you want to ignore some events, you can specify them in the `HUBOT_WATCH_IGNORED` variable. Example: 

```
HUBOT_WATCH_USERNAME="myusername" HUBOT_WATCH_PASSWORD="mypassword" HUBOT_WATCH_IGNORED="WatchEvent ForkEvent" ./bin/hubot
```

Here is a list of all events currently handled by *hubot_watch*: 
- IssuesEvent
- IssueCommentEvent
- PullRequestEvent
- PushEvent
- CreateEvent
- DeleteEvent
- GollumEvent
- MemberEvent
- WatchEvent
- ForkEvent

See the [API documentation](https://developer.github.com/v3/activity/events/types/) for more details.

## Usage

- `hubot watch <repository>`: Add the repository to the watchlist
- `hubot watch list`: Show the watched repositories
