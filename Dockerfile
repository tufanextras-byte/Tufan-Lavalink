FROM ghcr.io/lavalink-devs/lavalink:4
USER root
COPY application.yml /opt/Lavalink/application.yml
EXPOSE 10000
ENTRYPOINT ["sh", "-c", "java -Xmx512M -jar $(find / -name 'Lavalink.jar' | head -n 1)"]
