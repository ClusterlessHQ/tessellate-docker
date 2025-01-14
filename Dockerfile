# Generated with JReleaser 1.9.0 at 2025-01-14T18:38:01.155569Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-49"
    LABEL "org.opencontainers.image.revision"="25bccf3bc9b71e56463c38b5aa1501bb8ea9aaf7"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-49.zip && \
rm tessellate-1.0-wip-49.zip && \
chmod +x tessellate-1.0-wip-49/bin/tess && \
mv /tessellate-1.0-wip-49 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
