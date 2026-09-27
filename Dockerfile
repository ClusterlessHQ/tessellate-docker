# Generated with JReleaser 1.26.0 at 2026-09-27T16:20:16.544127052Z
FROM azul/zulu-openjdk-alpine:25-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-93"
    LABEL "org.opencontainers.image.revision"="8e39c3a672b2dc9906359ec0b03f9c0c8768be91"
    LABEL "org.opencontainers.image.source"="https://github.com/ClusterlessHQ/tessellate-docker"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-93.zip && \
rm tessellate-1.0-wip-93.zip && \
chmod +x tessellate-1.0-wip-93/bin/tess && \
mv /tessellate-1.0-wip-93 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
