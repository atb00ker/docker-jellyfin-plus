FROM docker.io/jellyfin/jellyfin:10.10

RUN apt update && \
    apt install -y python3-pip yt-dlp && \
    apt autoremove -y && \
    apt autoclean && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /logs && chown 1000:1000 /logs && \
   mkdir /opt/transcodes && chown 1000:1000 /opt/transcodes
