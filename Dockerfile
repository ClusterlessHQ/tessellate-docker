# Generated with JReleaser 1.9.0 at 2023-12-06T16:56:56.429017Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-47"
    LABEL "org.opencontainers.image.revision"="5399699be2c3c38bd92c934061598c1f33f55ac2"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-47.zip && \
rm tessellate-1.0-wip-47.zip && \
chmod +x tessellate-1.0-wip-47/bin/tess && \
mv /tessellate-1.0-wip-47 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
