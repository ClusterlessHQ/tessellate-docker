# Generated with JReleaser 1.16.0 at 2025-05-03T00:08:10.702838Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-80"
    LABEL "org.opencontainers.image.revision"="8a43e16c0d47b6c55c2d5edc65256c0b24e123d8"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-80.zip && \
rm tessellate-1.0-wip-80.zip && \
chmod +x tessellate-1.0-wip-80/bin/tess && \
mv /tessellate-1.0-wip-80 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
