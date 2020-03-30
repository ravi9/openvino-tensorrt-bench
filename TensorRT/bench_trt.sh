#!/bin/bash

source activate tensorflow_p36

echo -e "\n****************\n CPU Info \n****************\n"
lscpu

echo -e "\n****************\n NVIDIA GPU Info \n****************\n"
nvidia-smi

echo -e "\n****************\n Memory Info \n****************\n"
free -h

echo -e "\n****************\n GCC Info \n****************\n"
gcc -v

echo -e "\n****************\n Python Info \n****************\n"
python3 --version

echo -e "\n****************\n Pip Packages \n****************\n"
pip3 list

echo -e "\n****************\n Benchmarking InceptionV3 \n****************\n"
python tensorrt_keras_inceptionv3-benchmark.py

echo -e "\n****************\n Benchmarking 2D U-Net \n****************\n"
python tensorrt_keras_2dunet-decatlon-benchmark.py 

