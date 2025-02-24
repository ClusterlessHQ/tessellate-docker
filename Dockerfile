# Generated with JReleaser 1.16.0 at 2025-02-24T18:07:11.581977Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-58"
    LABEL "org.opencontainers.image.revision"="2860372c66aff9d608e8698f8d48b845a54b526e"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-58.zip && \
rm tessellate-1.0-wip-58.zip && \
chmod +x tessellate-1.0-wip-58/bin/tess && \
mv /tessellate-1.0-wip-58 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
