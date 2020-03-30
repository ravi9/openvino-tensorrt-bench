#!/bin/bash

source activate tensorflow_p36

echo -e "\n****************\n Benchmarking 2D U-Net \n****************\n"
python tensorrt_keras_2dunet-decatlon-benchmark.py 