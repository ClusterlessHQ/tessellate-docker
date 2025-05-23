# Generated with JReleaser 1.16.0 at 2025-05-23T04:58:56.916046Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-89"
    LABEL "org.opencontainers.image.revision"="905ead4a4b2fb917617e7debf54c60e64acd15f1"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-89.zip && \
rm tessellate-1.0-wip-89.zip && \
chmod +x tessellate-1.0-wip-89/bin/tess && \
mv /tessellate-1.0-wip-89 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
