# Generated with JReleaser 1.16.0 at 2025-03-18T21:21:29.002354Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-64"
    LABEL "org.opencontainers.image.revision"="d933cd3f8ea1cc818e9915609d5a2eecf32764ac"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-64.zip && \
rm tessellate-1.0-wip-64.zip && \
chmod +x tessellate-1.0-wip-64/bin/tess && \
mv /tessellate-1.0-wip-64 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
