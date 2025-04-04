# Generated with JReleaser 1.16.0 at 2025-04-03T18:50:58.83272Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-70"
    LABEL "org.opencontainers.image.revision"="ab27826be21f8689c92b35ced2811329fc89f7f9"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-70.zip && \
rm tessellate-1.0-wip-70.zip && \
chmod +x tessellate-1.0-wip-70/bin/tess && \
mv /tessellate-1.0-wip-70 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
