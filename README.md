# OpenVINO-TensorRT-Benchmarking
Convert and Benchmark InceptionV3, 2D U-Net Tensorflow/Keras models to OpenVINO and TensorRT.

This repo contains notebooks to replicate benchmarking with OpenVINO and TensorRT.

- [OpenVINO InceptionV3 and 2D U-Net benchmarking with Docker](#openvino-benchmarking-with-docker)
- [OpenVINO InceptionV3 benchmark Jupyter notebook](OpenVINO/OpenVINO-convert-benchmark-InceptionV3-Inference.ipynb)
- [OpenVINO 2D U-Net benchmark Jupyter notebook](OpenVINO/OpenVINO-convert-benchmark-UNet-Inference.ipynb)


- [TensorRT InceptionV3 benchmark Jupyter notebook](TensorRT/tensorrt_convert_bench_keras_inceptionv3.ipynb)
- [TensorRT 2D U-Net benchmark Jupyter notebook](TensorRT/tensorrt_convert_bench_keras_unet_decathlon.ipynb)

### OpenVINO Benchmarking with Docker

To re-run benchmarks with OpenVINO, the simple way is to run with a docker.

#### Step 1: Install Docker on Ubuntu:

```
curl -fsSL https://get.docker.com -o get-docker.sh &&
sudo sh get-docker.sh && 
sudo usermod -aG docker $USER
```

#### Step 2: Run benchmarks
To run both Inceptionv3 and 2D U-Net benchmark
```
docker run --rm rpanchum/ovbench:latest /root/bench.sh
```

To run Inceptionv3 benchmark
```
docker run --rm rpanchum/ovbench:latest /root/bench_inceptionv3.sh
```

To run 2D U-Net benchmark:
```
docker run --rm rpanchum/ovbench:latest /root/bench_unet.sh
```


