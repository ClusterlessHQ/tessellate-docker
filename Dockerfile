# Generated with JReleaser 1.16.0 at 2025-04-03T14:19:35.270144Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-69"
    LABEL "org.opencontainers.image.revision"="0b2b65d43ccf9fd8ab1807732a2529556dbd4a20"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-69.zip && \
rm tessellate-1.0-wip-69.zip && \
chmod +x tessellate-1.0-wip-69/bin/tess && \
mv /tessellate-1.0-wip-69 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
