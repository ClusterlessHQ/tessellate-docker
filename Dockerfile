# Generated with JReleaser 1.16.0 at 2025-03-18T22:26:52.420138Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-65"
    LABEL "org.opencontainers.image.revision"="22b71d5e207e1472cd9687c7ef9b9cdb2db663a9"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-65.zip && \
rm tessellate-1.0-wip-65.zip && \
chmod +x tessellate-1.0-wip-65/bin/tess && \
mv /tessellate-1.0-wip-65 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
