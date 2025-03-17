# Generated with JReleaser 1.16.0 at 2025-03-17T21:42:27.675311Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-63"
    LABEL "org.opencontainers.image.revision"="5d1edc146556011b32e661fdd9694125e74b1085"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-63.zip && \
rm tessellate-1.0-wip-63.zip && \
chmod +x tessellate-1.0-wip-63/bin/tess && \
mv /tessellate-1.0-wip-63 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
