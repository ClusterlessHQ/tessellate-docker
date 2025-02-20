# Generated with JReleaser 1.16.0 at 2025-02-20T21:41:42.883076Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-57"
    LABEL "org.opencontainers.image.revision"="57820d962b62f9877fc312e3a1869aa0c82ba0f9"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-57.zip && \
rm tessellate-1.0-wip-57.zip && \
chmod +x tessellate-1.0-wip-57/bin/tess && \
mv /tessellate-1.0-wip-57 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
