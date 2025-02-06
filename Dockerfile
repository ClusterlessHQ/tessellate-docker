# Generated with JReleaser 1.16.0 at 2025-02-06T23:08:38.496175Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-55"
    LABEL "org.opencontainers.image.revision"="151c8b7de21c9e23f8353a1c4d080078e55c04e3"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-55.zip && \
rm tessellate-1.0-wip-55.zip && \
chmod +x tessellate-1.0-wip-55/bin/tess && \
mv /tessellate-1.0-wip-55 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
