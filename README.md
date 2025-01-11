# Jellyfin Plus

Jellyfin Plus is a custom jellyfin docker image based on the official jellyfin image. This image includes additional packages that I need with my installation of Jellyfin.

<div align="center">
  <img src="./docs/jellyfin-logo.svg" width="450" />

[![Code](https://img.shields.io/badge/code-opensource-green)](https://github.com/atb00ker/docker-jellyfin-plus)
[![GitHub Actions](https://github.com/atb00ker/docker-jellyfin-plus/actions/workflows/docker-image-update.yml/badge.svg)](https://github.com/atb00ker/docker-jellyfin-plus/actions)
[![Size](https://img.shields.io/docker/image-size/atb00ker/jellyfin.svg)](https://hub.docker.com/r/atb00ker/jellyfin)
[![DockerHub](https://img.shields.io/docker/pulls/atb00ker/jellyfin.svg)](https://hub.docker.com/r/atb00ker/jellyfin)
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)

</div>

## Key changes

- Adds yt-dlp to the container for YouTube Metadata extraction.

## GitHub Actions Workflow

The GitHub Actions workflow automates the building and deployment of the image to the Docker Hub registry. It runs every Saturday at 8:00 AM, ensuring the image with the latest tag aligns with the most recent Jellyfin version. If you use an automatic docker image update tool like [watchtower](https://github.com/containrrr/watchtower), be aware of this update schedule.

### Image Manual Update

```bash
docker build -f ./Containerfile -t atb00ker/jellyfin:latest ./
docker push atb00ker/jellyfin:latest
```
