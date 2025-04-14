# Generated with JReleaser 1.16.0 at 2025-04-14T23:39:23.176557Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-75"
    LABEL "org.opencontainers.image.revision"="d3cd6cb9cbb1feac9bfff7874c381d8f0c3ff8f0"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-75.zip && \
rm tessellate-1.0-wip-75.zip && \
chmod +x tessellate-1.0-wip-75/bin/tess && \
mv /tessellate-1.0-wip-75 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
