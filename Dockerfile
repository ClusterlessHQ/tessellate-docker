# Generated with JReleaser 1.16.0 at 2025-05-22T16:59:19.048344Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-86"
    LABEL "org.opencontainers.image.revision"="af77a120f2e88e29a6d7b44a299d1c371107a14a"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-86.zip && \
rm tessellate-1.0-wip-86.zip && \
chmod +x tessellate-1.0-wip-86/bin/tess && \
mv /tessellate-1.0-wip-86 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
