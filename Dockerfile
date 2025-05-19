# Generated with JReleaser 1.16.0 at 2025-05-19T21:05:42.057462Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-84"
    LABEL "org.opencontainers.image.revision"="e0b5e9c6bfe4e7fc2099f8f44d44a6758aca563a"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-84.zip && \
rm tessellate-1.0-wip-84.zip && \
chmod +x tessellate-1.0-wip-84/bin/tess && \
mv /tessellate-1.0-wip-84 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
