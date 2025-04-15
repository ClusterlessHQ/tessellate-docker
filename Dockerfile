# Generated with JReleaser 1.16.0 at 2025-04-15T20:28:44.043086Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-77"
    LABEL "org.opencontainers.image.revision"="3657c809dfb46f56013a1461147cbdffed3a041e"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-77.zip && \
rm tessellate-1.0-wip-77.zip && \
chmod +x tessellate-1.0-wip-77/bin/tess && \
mv /tessellate-1.0-wip-77 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
