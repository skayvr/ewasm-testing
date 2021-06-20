#!/bin/bash

echo "Remember: This must be run on the host machine!"

target_directory=$(pwd)
target_directory=${target_directory#"/host"}
target_directory="${target_directory/users/Users}" 

# Unfortunately can't use $(pwd) due to setup constraints.
sudo docker run -i -t --mount type=bind,source="$target_directory"/target-docker,target=/target-docker ethereum/cpp-build-env:15-clang-9 /bin/bash

# cpp-build-env tags that can be used in the docker file.
# https://hub.docker.com/r/ethereum/cpp-build-env/tags?page=1&ordering=last_updated

# Mount directories must be on the host machine.
#sudo docker run -i -t --mount type=bind,source="$(pwd)"/docker-target,target=/app ethereum/cpp-build-env:15-clang-10 /bin/bash

