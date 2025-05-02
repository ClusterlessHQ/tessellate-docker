# Generated with JReleaser 1.16.0 at 2025-05-02T16:06:05.53889Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-78"
    LABEL "org.opencontainers.image.revision"="895a7dec7a2122ee2b862c772915005e8d040050"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-78.zip && \
rm tessellate-1.0-wip-78.zip && \
chmod +x tessellate-1.0-wip-78/bin/tess && \
mv /tessellate-1.0-wip-78 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
