# Generated with JReleaser 1.16.0 at 2025-04-14T19:21:12.69732Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-74"
    LABEL "org.opencontainers.image.revision"="4a0b5ed3f856aee3c96771b74445c267205ca365"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-74.zip && \
rm tessellate-1.0-wip-74.zip && \
chmod +x tessellate-1.0-wip-74/bin/tess && \
mv /tessellate-1.0-wip-74 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
