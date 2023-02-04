#!/usr/bin/bash

ENV=null
FRM=$1

if [[ ! $FRM =~ ^(pytorch|tensorflow)$ ]]; then
    printf 'Platform not recognized...\n\n'
    exit 1
fi

if [ $FRM == 'pytorch' ]; then
    ENV='pytorch'
    conda env create -n ${ENV} -f environment-base.yml
    conda env update -n ${ENV} -f pytorch/environment-pytorch.yml
elif [ $FRM == 'tensorflow' ]; then
    ENV='tf'
    conda env create -n ${ENV} -f environment-base.yml
    conda env update -n ${ENV} -f tf/environment-tf.yml
fi

conda update -n $ENV --all

exit 0
