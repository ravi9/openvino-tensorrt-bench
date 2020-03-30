#!/bin/bash

source activate tensorflow_p36

echo -e "\n****************\n Benchmarking InceptionV3 \n****************\n"
python tensorrt_keras_inceptionv3-benchmark.py
