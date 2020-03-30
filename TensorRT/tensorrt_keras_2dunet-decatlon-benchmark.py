import keras
import os
import tensorflow as tf
import numpy as np
import time

## Benchmark function
def benchmark_1min(output_saved_model_dir):
    output_tensor =  'PredictionMask/Sigmoid:0'
    input_tensor = 'MRImages:0'
    input_data = np.random.randint(0, 255, size=(1,160,160,4))

    tf_config = tf.ConfigProto()
    tf_config.gpu_options.allow_growth = True
    tf_sess = tf.Session(config=tf_config)

    # First load the SavedModel into the session
    tf.saved_model.loader.load(
            tf_sess, [tf.saved_model.tag_constants.SERVING],
           output_saved_model_dir)

    tf_sess.run(tf.global_variables_initializer())

    import time
    times = []
    # Run inference for 1 min.
    end = time.time() + 60
    print(time.strftime("%H:%M:%S"))
    print("Running inference for 1 min, with BZ=1")
    print("Model: {}, Input shape: {}  "
          .format(output_saved_model_dir, input_data.shape))
    while time.time() < end:
        start_time = time.time()
        output = tf_sess.run([output_tensor], feed_dict={input_tensor: input_data})
        delta = (time.time() - start_time)
        times.append(delta)

    mean_delta = np.array(times).mean()
    fps = 1 / mean_delta
    print('Output Shape: {}, \naverage(sec):{:.3f} , average(msec):{:.2f} , fps:{:.2f}'
          .format(output[0].shape, mean_delta, mean_delta*1000, fps))
    
###
#Benchmark FP32
benchmark_1min("/home/ubuntu/models/unet/trt-output/")

#Benchmark FP16
benchmark_1min("/home/ubuntu/models/unet/trt-output-fp16/")