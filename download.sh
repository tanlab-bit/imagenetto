#!/usr/bin/env bash

# Create folder with name imagenet if not exists
mkdir -p imagenet

# Start downloading!
python ./downloader/downloader.py \
  -data_root ./imagenet \
  -use_class_list True \
  -class_list n02092002 n02134084 n07745940 n04389033 n04252077 n04579432 n02749479 n04228054 n02776631 n07920052 \
  -images_per_class 3
