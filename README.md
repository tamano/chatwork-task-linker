# chatwork-secretary

[![Circle CI](https://circleci.com/gh/tamano/chatwork-secretary.svg?style=svg)](https://circleci.com/gh/tamano/chatwork-secretary) [![Code Climate](https://codeclimate.com/github/tamano/chatwork-secretary/badges/gpa.svg)](https://codeclimate.com/github/tamano/chatwork-secretary) [![Dependency Status](https://gemnasium.com/tamano/chatwork-secretary.svg)](https://gemnasium.com/tamano/chatwork-secretary)

This program provides some alert or notify function to ChatWork.
It works through ChatWork API.

# Environment values needed
- CHATWORK_SYSBOT_API_TOKEN
  - API Token use to login to Chatwork
- CHATWORK_SYSBOT_BROADCAST_ROOM_ID
  - Room ID of Chatwork which used to send message to everyone.
- CHATWORK_SYSBOT_BROADCAST_TO
  - User IDs(separeted with `:`) of everyone.
