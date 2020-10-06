#!/usr/bin/env bash

# Use git to clone the ImageNet downloader repository
git clone https://github.com/mf1024/ImageNet-Datasets-Downloader
cd ImageNet-Datasets-Downloader

# Create a root directory to hold the downloaded images
mkdir imagenet

# Start downloading!
python ./downloader.py \
  -data_root ./imagenet \
  -use_class_list True \
  -class_list n02690373 n01833805 n04273569 n04146614 n02123394 n02109961 n03376595 n04344873 n02917067 n03782006 \
  -images_per_class 300
