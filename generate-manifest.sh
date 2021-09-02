docker manifest create openbaseorg/spread:experimental openbaseorg/spread:experimental-amd64 openbaseorg/spread:experimental-arm32 openbaseorg/spread:experimental-arm64
docker manifest annotate openbaseorg/spread:experimental openbaseorg/spread:experimental-arm32 --arch arm
docker manifest annotate openbaseorg/spread:experimental openbaseorg/spread:experimental-arm64 --arch arm64
docker manifest push --purge openbaseorg/spread:experimental
docker manifest create openbaseorg/spread:latest openbaseorg/spread:latest-amd64 openbaseorg/spread:latest-arm32 openbaseorg/spread:latest-arm64
docker manifest annotate openbaseorg/spread:latest openbaseorg/spread:latest-arm32 --arch arm
docker manifest annotate openbaseorg/spread:latest openbaseorg/spread:latest-arm64 --arch arm64
docker manifest push --purge openbaseorg/spread:latest
