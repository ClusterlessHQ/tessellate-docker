# Generated with JReleaser 1.16.0 at 2025-05-14T18:44:54.833858Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-83"
    LABEL "org.opencontainers.image.revision"="2152cd4f283d10e65758f10981b8d24a4ffa5520"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-83.zip && \
rm tessellate-1.0-wip-83.zip && \
chmod +x tessellate-1.0-wip-83/bin/tess && \
mv /tessellate-1.0-wip-83 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
