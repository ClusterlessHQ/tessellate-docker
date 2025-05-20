# Generated with JReleaser 1.16.0 at 2025-05-20T16:08:52.111903Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-85"
    LABEL "org.opencontainers.image.revision"="c46fc02a6450d8d294315b2d3b07308f574b55a1"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-85.zip && \
rm tessellate-1.0-wip-85.zip && \
chmod +x tessellate-1.0-wip-85/bin/tess && \
mv /tessellate-1.0-wip-85 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
