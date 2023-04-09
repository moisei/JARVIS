#/bin/bash
set -e

pushd server
conda create -y -n jarvis python=3.8
conda activate jarvis
conda install -y pytorch torchvision torchaudio pytorch-cuda=11.7 -c pytorch -c nvidia
pip install -r requirements.txt
# cd models
# required when `inference_mode` is `local` or `hybrid`.
# bash download.sh
conda init bash
popd
