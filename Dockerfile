# Generated with JReleaser 1.16.0 at 2025-03-26T20:02:07.352754Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-66"
    LABEL "org.opencontainers.image.revision"="94753c95bd87eb9663923abf42439ded8477cc0d"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-66.zip && \
rm tessellate-1.0-wip-66.zip && \
chmod +x tessellate-1.0-wip-66/bin/tess && \
mv /tessellate-1.0-wip-66 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
