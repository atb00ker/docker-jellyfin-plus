# TODO: Use latest tag after next release
# FROM docker.io/jellyfin/jellyfin:latest
FROM docker.io/jellyfin/jellyfin:2024120905

RUN apt-get update && apt-get install -y python3-pip yt-dlp && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /logs
