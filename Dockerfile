# Generated with JReleaser 1.16.0 at 2025-04-02T15:30:30.847638Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-67"
    LABEL "org.opencontainers.image.revision"="b37287b7ec8904562d749676eca86ea70836975a"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-67.zip && \
rm tessellate-1.0-wip-67.zip && \
chmod +x tessellate-1.0-wip-67/bin/tess && \
mv /tessellate-1.0-wip-67 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
