docker run --rm --privileged docker/binfmt:a7996909642ee92942dcd6cff44b9b95f08dad64
cat /proc/sys/fs/binfmt_misc/qemu-aarch64
export DOCKER_CLI_EXPERIMENTAL=enabled
docker buildx create --use --name jetson-builder --node jetson-builder --driver-opt network=host --config=../buildkitd.toml
docker buildx build . -t jetson-jupyter-tensorflow:v1 --platform linux/arm64 --load
