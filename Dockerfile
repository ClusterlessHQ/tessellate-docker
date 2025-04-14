# Generated with JReleaser 1.16.0 at 2025-04-14T18:42:47.058316Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-73"
    LABEL "org.opencontainers.image.revision"="76aeae5b6b844ee48bdf34f389406c0d67353a1d"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-73.zip && \
rm tessellate-1.0-wip-73.zip && \
chmod +x tessellate-1.0-wip-73/bin/tess && \
mv /tessellate-1.0-wip-73 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
