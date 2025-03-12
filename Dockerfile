# Generated with JReleaser 1.16.0 at 2025-03-12T16:19:38.980386Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-60"
    LABEL "org.opencontainers.image.revision"="c3459858784dc6d64d7a7aa4df06a3482e70b2cc"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-60.zip && \
rm tessellate-1.0-wip-60.zip && \
chmod +x tessellate-1.0-wip-60/bin/tess && \
mv /tessellate-1.0-wip-60 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
