#/bin/bash

docker run --rm -it                                 \
        -v $(pwd)/..:/app                           \
        -w /app                                     \
        -v $(pwd)/.root-.cache:/root/.cache         \
        -v $(pwd)/.root-.conda:/root/.conda         \
        -v $(pwd)/opt-conda-envs:/opt/conda/envs    \
        --entrypoint bash                           \
    local/jarvis-server-builder
