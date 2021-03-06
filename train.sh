#!/bin/sh
if ! test -f example/MobileNetSSD_train.prototxt ;then
	echo "error: example/MobileNetSSD_train.prototxt does not exist."
	echo "please use the gen_model.sh to generate your own model."
        exit 1
fi
mkdir -p snapshot
../caffe/build/tools/caffe train -solver="solver_train.prototxt" \
-weights="snapshot/mobilenet_new__iter_3865.caffemodel" \
-gpu 0
