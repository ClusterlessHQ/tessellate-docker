# Generated with JReleaser 1.16.0 at 2025-02-01T00:27:29.875691Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-53"
    LABEL "org.opencontainers.image.revision"="db171d9dc53216f59d79208be3a99b8f4e601689"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-53.zip && \
rm tessellate-1.0-wip-53.zip && \
chmod +x tessellate-1.0-wip-53/bin/tess && \
mv /tessellate-1.0-wip-53 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
