# Hubot: Goo.gl

A Hubot script for generating short [goo.gl](https://goo.gl/) URLs with public click analytics.


## Installation via NPM

1. Install the __hubot-googl__ module as a Hubot dependency by running:

    ```
    npm install --save hubot-googl
    ```

2. Enable the script by adding the __hubot-googl__ entry to your `external-scripts.json` file:

    ```json
    [
        "hubot-googl"
    ]
    ```

3. Run your bot and see below for available config / commands


## Configuration

Variable | Default | Description
--- | --- | ---
`GOOGLE_API_KEY` | N/A | A unique developer [API key](https://developers.google.com/url-shortener/v1/getting_started#auth) is required to use Google's URL Shortener API


## Commands

Command | Description
--- | ---
hubot shorten `url` | Creates a new short URL with `url`