# Generated with JReleaser 1.16.0 at 2025-02-05T21:44:26.076047Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-54"
    LABEL "org.opencontainers.image.revision"="a29394b5b5be9c3d4fe4124e4e8f8f2521a20944"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-54.zip && \
rm tessellate-1.0-wip-54.zip && \
chmod +x tessellate-1.0-wip-54/bin/tess && \
mv /tessellate-1.0-wip-54 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
