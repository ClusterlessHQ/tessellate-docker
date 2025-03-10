# Generated with JReleaser 1.16.0 at 2025-03-10T21:11:26.178951Z
FROM azul/zulu-openjdk-alpine:11-jre

    LABEL "org.opencontainers.image.title"="Tessellate"
    LABEL "org.opencontainers.image.description"="Tessellate is tool for parsing and partitioning data."
    LABEL "org.opencontainers.image.url"="https://github.com/ClusterlessHQ"
    LABEL "org.opencontainers.image.licenses"="MPL-2.0"
    LABEL "org.opencontainers.image.version"="1.0-wip-59"
    LABEL "org.opencontainers.image.revision"="a36d905d8ca4924d2560d4ad6eb718453ef312a8"


COPY assembly/* /

RUN unzip tessellate-1.0-wip-59.zip && \
rm tessellate-1.0-wip-59.zip && \
chmod +x tessellate-1.0-wip-59/bin/tess && \
mv /tessellate-1.0-wip-59 /tess

ENV PATH="${PATH}:/tess/bin"


ENTRYPOINT ["/tess/bin/tess"]

CMD ["--help"]
