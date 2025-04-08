# Generated with JReleaser 1.16.0 at 2025-04-08T23:07:31.15616Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-71"
    LABEL "org.opencontainers.image.revision"="471c7990c507551242371e9afdc5b821aceba1d9"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-71.zip && \
rm tessellate-1.0-wip-71.zip && \
chmod +x tessellate-1.0-wip-71/bin/tess && \
mv /tessellate-1.0-wip-71 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
