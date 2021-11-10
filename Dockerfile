# https://docs.docker.com/buildx/working-with-buildx/#install
FROM docker:dind
COPY --from=docker/buildx-bin:0.6.0 /buildx /usr/libexec/docker/cli-plugins/docker-buildx
RUN docker buildx version
