#!/bin/bash
heroku container:push web -a randomic-rabbit
heroku container:release web -a randomic-rabbit
aplay /usr/share/sounds/purple/alert.wav
