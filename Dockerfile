# Generated with JReleaser 1.16.0 at 2025-05-12T16:40:39.514903Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-81"
    LABEL "org.opencontainers.image.revision"="61a4573ef342b93933e3771d6c7bec50718c0f52"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-81.zip && \
rm tessellate-1.0-wip-81.zip && \
chmod +x tessellate-1.0-wip-81/bin/tess && \
mv /tessellate-1.0-wip-81 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
