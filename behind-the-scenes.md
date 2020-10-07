# Behind the scenes

> How did I determine, process, download and split the `imagenet-all-rounder` dataset?

## Preparations

The ImageNet dataset is an unbelievably large dataset which contains 1,000 different class labels, including various items belonging to a same, _larger_ category (for instance, all kinds of dogs and cats, different chairs, numerous types of vehicles, etc.). We won't be needing all these classes, we only need 10 classes. And the important thing is to determine the classes that overlap with pretrained detector labels (most often Pascal VOC labels).

So, in the end, I chose the following 10 class labels that are shared among ImageNet and Pascal VOC datasets. Their names may not be identical, but they often mean the same thing to a human.

The 10 class labels are:

| Index | ImageNet Classes | ImageNet Labels | VOC Labels |
| :---- | :--------------- | :-------------- | :--------- |
| 1     | n02109961        | Eskimo dog      | dog        |
| 2     | n02123394        | Persian cat     | cat        |
| 3     | n02690373        | airliner        | aeroplane  |
| 4     | n02917067        | bullet train    | train      |
| 5     | n03376595        | folding chair   | chair      |
| 6     | n01833805        | hummingbird     | bird       |
| 7     | n03782006        | monitor         | tvmonitor  |
| 8     | n04146614        | school bus      | bus        |
| 9     | n04273569        | speedboat       | boat       |
| 10    | n04344873        | studio couch    | sofa       |

## Downloading (Scraping) the images

With the 10 classes sorted out, I needed to download or scrape the actual images inside ImageNet to compose my own custom dataset. Here I used the tool [mf1024/ImageNet-Datasets-Downloader](https://github.com/mf1024/ImageNet-Datasets-Downloader), which is very easy and convenient to use.

The actual command I executed to download the dataset is at: [download.sh](./download.sh) if anyone is interested. I downloaded ~300 images for each class, and ended up with ~3,000 images in total.

## Splitting the dataset

Finally, I needed to split the dataset into 2 parts to use for both training and validation. I used the [jfilter/split-folders](https://github.com/jfilter/split-folders) tool to split the dataset with a 80%/20% ratio.

With the final split sorted out, I was able to use my custom `imagenet-all-rounder` dataset to transfer train a pretrained model on ImageNet. The end.
