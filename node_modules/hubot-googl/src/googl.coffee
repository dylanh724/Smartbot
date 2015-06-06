# Description
#   Google URL Shortener API (goo.gl)
#
# Configuration:
#   GOOGLE_API_KEY
#
# Commands:
#   hubot shorten <url> - Creates a new short URL with <url>
#
# Author:
#   MrSaints

GOOGLE_API_KEY = process.env.GOOGLE_API_KEY

module.exports = (robot) ->
    if not GOOGLE_API_KEY?
        robot.logger.debug "Missing GOOGLE_API_KEY in environment. Setting an API key is highly recommended."

    serverErr = "We are unable to process your request at this time due to a server error. Please try again later."

    robot.respond /shorten (.+)/i, (msg) ->
        data = JSON.stringify 
            longUrl: msg.match[1]

        params = {}
        params.key = GOOGLE_API_KEY if GOOGLE_API_KEY?

        msg.http("https://www.googleapis.com/urlshortener/v1/url")
            .query(params)
            .header("content-type", "application/json")
            .post(data) (err, res, body) ->
                robot.logger.debug body

                if err
                    msg.reply serverErr
                    return robot.logger.error err

                try
                    resource = JSON.parse(body)
                    msg.reply resource.id
                catch error
                    msg.reply serverErr
                    return robot.logger.error error
