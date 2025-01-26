FROM docker.io/jellyfin/jellyfin:latest

RUN apt update && \
    apt install -y python3-pip yt-dlp && \
    apt autoremove -y && \
    apt autoclean && \
    apt clean && \
    rm -rf \
    /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /logs
