# Generated with JReleaser 1.16.0 at 2025-04-15T14:59:15.040049Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-76"
    LABEL "org.opencontainers.image.revision"="12ce718d869e7819df8f0b97df3babc587c01a85"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-76.zip && \
rm tessellate-1.0-wip-76.zip && \
chmod +x tessellate-1.0-wip-76/bin/tess && \
mv /tessellate-1.0-wip-76 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
