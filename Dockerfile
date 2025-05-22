# Generated with JReleaser 1.16.0 at 2025-05-22T20:48:14.038605Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-87"
    LABEL "org.opencontainers.image.revision"="6e9549424689249a9b8d39fb99a03b5c24baaa74"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-87.zip && \
rm tessellate-1.0-wip-87.zip && \
chmod +x tessellate-1.0-wip-87/bin/tess && \
mv /tessellate-1.0-wip-87 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
