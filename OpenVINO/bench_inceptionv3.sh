#!/bin/bash

source /opt/intel/openvino//bin/setupvars.sh
python3 /opt/intel/openvino/deployment_tools/tools/benchmark_tool/benchmark_app.py \
-m /root/ov_models/inceptionv3/FP32/saved_model.xml \
-nireq 1 -nstreams 1
