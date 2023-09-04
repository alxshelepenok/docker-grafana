# docker-grafana

Ready-to-run Docker image with Grafana.

## Quickstart

```bash
$ docker run --name grafana -e alxshelepenok/grafana:latest
```

## Building

```bash
$ ./build.sh latest
```

# Usage

```yaml
version: "3.9"

services:
  grafana:
    image: alxshelepenok/grafana:latest
    volumes:
      - grafana-data:/var/lib/grafana
      - ./grafana/plugins:/var/lib/grafana/plugins
      - ./grafana/grafana.ini:/etc/grafana/grafana.ini
      - ./grafana/provisioning/:/etc/grafana/provisioning/

volumes:
  grafana-data:
    external: false
```
