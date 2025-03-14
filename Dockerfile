# Generated with JReleaser 1.16.0 at 2025-03-14T22:24:15.256359Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-61"
    LABEL "org.opencontainers.image.revision"="05d2600e353961d4651e29d9e907bd169b056016"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-61.zip && \
rm tessellate-1.0-wip-61.zip && \
chmod +x tessellate-1.0-wip-61/bin/tess && \
mv /tessellate-1.0-wip-61 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
