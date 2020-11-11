# dictionary-slackbot

> Dictionary bot runs as an addon on Slack and allows you to quickly look up the definition of any word. It also includes the ability to look up synonyms

![Demo](./img/demo.gif)

![screenshot](./img/define.png)

![screenshot](./img/synonyms.png)



## Live Demo

You need to have a Slack account. Use the link to join this workspace

https://join.slack.com/t/custom-nta2748/shared_invite/zt-iwxge1x1-cxdORB2HF~qh~2s~Re~7dQ


## Built With

- Ruby
- Slack-Ruby-Bot
- Unofficial googleDictionaryAPI
- Atom

### Prerequisites

- 'activesupport'

- 'async-websocket', '~>0.8.0'

- 'dotenv'

- 'httparty'

- 'json'

- 'puma'

- 'slack-ruby-bot'

### Usage

command 'define <word>'

- Tells you the definition of the specified <word>


command 'What is the meaning of <word>?'

- Tells you the definition of the specified <word>'
- '?' (Question Mark) is essential


command 'synonyms <word>'
- Lists the synonyms of the specified <word>

command 'Alternative words for <word>?'
- Lists the synonyms of the specified <word>
-'?' (Question Mark) is essential


### Deployment

- Create a new workspace on Slack  (https://www.slack.com/create)
- Log in to the new workspace
- Create a bot on Slack website and add it to your workspace (https://slack.com/services/new/bot)
- Clone the repository
- Create a .env file in the root folder of the repository
- Copy the Slack API Token and assign the token to a variable named "SLACK_API_TOKEN" in the .env file
- Run 'ruby main.rb' on your local machine
- Use the bot in your Slack workplace

## Authors

👤 **Alaukik**

- Github: [@newhorizon-tech](https://github.com/newhorizon-tech)
- Twitter: [@techintosh3](https://twitter.com/techintosh3)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

API - https://github.com/meetDeveloper/googleDictionaryAPI

Bot icon from https://feathericons.com
