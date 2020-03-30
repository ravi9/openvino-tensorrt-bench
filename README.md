# ov-trt-bench
Convert and Benchmark InceptionV3, 2D U-Net Tensorflow/Keras models to OpenVINO and TensorRT.

## OpenVINO Benchmarking

To re-run benchmarks with OpenVINO, the simple way is to run with a docker.

### Step 1: Install Docker on Ubuntu:

```
curl -fsSL https://get.docker.com -o get-docker.sh &&
sudo sh get-docker.sh && 
sudo usermod -aG docker $USER
```

### Step 2: Run benchmarks
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


