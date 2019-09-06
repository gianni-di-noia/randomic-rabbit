#!/bin/bash
# docker build --rm -f "Dockerfile" -t randomic_rubbit:latest .
# docker tag randomic_rubbit gcr.io/cdn-dinoia/randomic_rubbit:latest
docker push gcr.io/cdn-dinoia/randomic_rubbit:latest
# gcloud compute instance-groups managed rolling-action restart workers \
#     --max-unavailable 100%

# aplay /usr/share/sounds/purple/alert.wav
# date +"%T"
