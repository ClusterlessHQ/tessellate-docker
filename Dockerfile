# Generated with JReleaser 1.16.0 at 2025-04-02T18:37:38.493254Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-68"
    LABEL "org.opencontainers.image.revision"="0f1f3ab69ffd78cb98544c71b55b3101b273e224"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-68.zip && \
rm tessellate-1.0-wip-68.zip && \
chmod +x tessellate-1.0-wip-68/bin/tess && \
mv /tessellate-1.0-wip-68 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
