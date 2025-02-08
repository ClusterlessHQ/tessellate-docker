# Generated with JReleaser 1.16.0 at 2025-02-08T19:02:53.326073Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-56"
    LABEL "org.opencontainers.image.revision"="e9743f9c2a21ac675466fac0c27f1da808ec9541"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-56.zip && \
rm tessellate-1.0-wip-56.zip && \
chmod +x tessellate-1.0-wip-56/bin/tess && \
mv /tessellate-1.0-wip-56 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
