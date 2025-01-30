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

## License

The MIT License (MIT)

Copyright (c) 2025 Alexander Shelepenok

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
