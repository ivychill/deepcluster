# Copyright (c) 2017-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#
#!/bin/bash

VOCDIR="${HOME}/user/fengchen/ssl/datasets/VOCdevkit/VOC2007"
#MODELROOT="${HOME}/deepcluster_models"
#MODEL="${MODELROOT}/alexnet/checkpoint.pth.tar"
MODELROOT="${HOME}/user/fengchen/ssl/deepcluster/exp"
MODEL="${MODELROOT}/checkpoint.pth.tar"

#PYTHON="${HOME}/test/conda/bin/python"
PYTHON=python

# with training the batch norm
# 72.0 mAP
$PYTHON eval_voc_classif.py --vocdir $VOCDIR --model $MODEL --split trainval --fc6_8 1 --train_batchnorm 1
#Evaluation
#Train set
#0.7246731732656475    0.91 0.74 0.83 0.80 0.48 0.69 0.85 0.78 0.64 0.65 0.67 0.65 0.80 0.80 0.89 0.44 0.71 0.71 0.85 0.63
#Test set
#0.4744065812059879    0.70 0.50 0.44 0.56 0.16 0.40 0.74 0.48 0.46 0.25 0.42 0.39 0.70 0.59 0.82 0.14 0.29 0.42 0.68 0.35


# without training the batch norm
# 70.4 mAP
$PYTHON eval_voc_classif.py --vocdir $VOCDIR --model $MODEL --split trainval --fc6_8 1 --train_batchnorm 0
#Evaluation
#Train set
#0.5170662307470983    0.81 0.49 0.56 0.58 0.26 0.41 0.71 0.62 0.52 0.29 0.45 0.46 0.58 0.60 0.80 0.22 0.44 0.50 0.59 0.44
#Test set
#0.3933013566183761    0.66 0.35 0.30 0.48 0.16 0.29 0.65 0.39 0.40 0.18 0.37 0.34 0.58 0.49 0.77 0.11 0.18 0.33 0.52 0.29