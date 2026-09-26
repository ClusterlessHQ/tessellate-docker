# Generated with JReleaser 1.16.0 at 2026-09-26T22:59:44.864944634Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-92"
    LABEL "org.opencontainers.image.revision"="9b2455b773b2b732a2146aeacd0e899a4172f79c"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-92.zip && \
rm tessellate-1.0-wip-92.zip && \
chmod +x tessellate-1.0-wip-92/bin/tess && \
mv /tessellate-1.0-wip-92 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
