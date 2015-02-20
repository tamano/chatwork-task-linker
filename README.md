# chatwork-task-linker

[![CircleCI](https://circleci.com/gh/tamano/chatwork-task-linker.svg?&style=shield&circle-token=b3d42997c87453923aaec24ca2535819b9fee6ee)](https://circleci.com/gh/tamano/chatwork-task-linker) [![Dependency Status](https://gemnasium.com/tamano/chatwork-task-linker.svg)](https://gemnasium.com/tamano/chatwork-task-linker)

Copy ChatWork's task to another web services.

# Environment values needed
- CHATWORK_SYSBOT_API_TOKEN
  - API Token use to login to Chatwork
- CHATWORK_SYSBOT_BROADCAST_ROOM_ID
  - Room ID of Chatwork which used to send message to everyone.
- CHATWORK_SYSBOT_BROADCAST_TO
  - User IDs(seperated with comma) of everyone.
