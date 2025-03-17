# Generated with JReleaser 1.16.0 at 2025-03-17T16:21:07.392235Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-62"
    LABEL "org.opencontainers.image.revision"="c68bee0927cd31fab24f193c3c486895c08b0268"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-62.zip && \
rm tessellate-1.0-wip-62.zip && \
chmod +x tessellate-1.0-wip-62/bin/tess && \
mv /tessellate-1.0-wip-62 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
