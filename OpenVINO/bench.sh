#!/bin/bash

source /opt/intel/openvino//bin/setupvars.sh

echo -e "\n****************\n CPU Info \n****************\n"
lscpu

echo -e "\n****************\n Memory Info \n****************\n"
free -h

echo -e "\n****************\n GCC Info \n****************\n"
gcc -v

echo -e "\n****************\n Python Info \n****************\n"
python3 --version

echo -e "\n****************\n Pip Packages \n****************\n"
pip3 list

echo -e "\n****************\n Benchmarking InceptionV3 \n****************\n"
python3 /opt/intel/openvino/deployment_tools/tools/benchmark_tool/benchmark_app.py \
-m /root/ov_models/inceptionv3/FP32/saved_model.xml \
-nireq 1 -nstreams 1 

echo -e "\n****************\n Benchmarking 2D U-Net \n****************\n"
python3 /opt/intel/openvino/deployment_tools/tools/benchmark_tool/benchmark_app.py \
-m /root/ov_models/unet/FP32/saved_model.xml \
-nireq 1 -nstreams 1

