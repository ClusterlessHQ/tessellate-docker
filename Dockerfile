# Generated with JReleaser 1.16.0 at 2025-05-13T14:31:53.842401Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-82"
    LABEL "org.opencontainers.image.revision"="c039b1495216a673af2d7ae9c306f7f229584ed7"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-82.zip && \
rm tessellate-1.0-wip-82.zip && \
chmod +x tessellate-1.0-wip-82/bin/tess && \
mv /tessellate-1.0-wip-82 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
