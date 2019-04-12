# Randomic Rabbit

## Docker container to run websocket in a Flask app.

To run the app locally install `docker` then:

```
docker build --rm -f "Dockerfile" -t randomic_rabbit:latest .
docker run --rm -d randomic_rabbit:latest
```
