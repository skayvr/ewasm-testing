#!/bin/bash

sudo docker run -i -t ethereum/cpp-build-env:15-clang-10 /bin/bash

# Mount directories must be on the host machine.
#sudo docker run -i -t --mount type=bind,source="$(pwd)"/docker-target,target=/app ethereum/cpp-build-env:15-clang-10 /bin/bash

