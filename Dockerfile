# Generated with JReleaser 1.16.0 at 2025-01-31T22:33:04.361099Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-52"
    LABEL "org.opencontainers.image.revision"="7248b1de286381b58bb56fce015727f26c7012ec"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-52.zip && \
rm tessellate-1.0-wip-52.zip && \
chmod +x tessellate-1.0-wip-52/bin/tess && \
mv /tessellate-1.0-wip-52 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
