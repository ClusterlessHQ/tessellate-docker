# Generated with JReleaser 1.9.0 at 2023-12-06T18:01:55.651442Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-48"
    LABEL "org.opencontainers.image.revision"="aa1db249532b22144bec9267f9b542bc36965eb1"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-48.zip && \
rm tessellate-1.0-wip-48.zip && \
chmod +x tessellate-1.0-wip-48/bin/tess && \
mv /tessellate-1.0-wip-48 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
