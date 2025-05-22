# Generated with JReleaser 1.16.0 at 2025-05-22T21:15:46.412685Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-88"
    LABEL "org.opencontainers.image.revision"="4337ee73cecc9fd6eba88fbbb27b727b0e88e5c2"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-88.zip && \
rm tessellate-1.0-wip-88.zip && \
chmod +x tessellate-1.0-wip-88/bin/tess && \
mv /tessellate-1.0-wip-88 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
