# 💮 Imagenetto

`imagenetto` is several small scale subset of 10 carefully chosen classes from
[ImageNet](http://www.image-net.org/) containing 3,000~5,000 training and
validation images.

## Quick usage

### Download

You can download the dataset here: [GitHub Release -
Imagenetto](https://github.com/daisylab-bit/imagenetto/releases/latest).

* `imagenetto_*.tar.gz` contains gzipped files of this dataset with a 80/20
  train/val split ratio.
* `imagenetto_*_no_split.tar.gz` contains gzipped files of the non-split version
  of this dataset.

### Demo

![demo](./images/demo.png)

### Using the dataset

You can load the dataset with PyTorch and torchvision.

```python
import os
import torch
import torchvision
from torchvision.transforms import transforms

# The root folder of the imagenetto dataset
dataset_root = "./imagenetto_a"

# Define a transform with random cropping and normalization
transform = {
    "train": transforms.Compose(
        [
            transforms.RandomResizedCrop(244),
            transforms.RandomHorizontalFlip(),
            transforms.ToTensor(),
            transforms.Normalize([0.485, 0.456, 0.406], [0.229, 0.224, 0.225]),
        ]
    ),
    "val": transforms.Compose(
        [
            transforms.Resize(256),
            transforms.CenterCrop(244),
            transforms.ToTensor(),
            transforms.Normalize([0.485, 0.456, 0.406], [0.229, 0.224, 0.225]),
        ]
    ),
}

# Load the dataset with torchvision ImageFolder
image_datasets = {
    x: torchvision.datasets.ImageFolder(
        root=os.path.join(dataset_root, x), transform=transform[x]
    )
    for x in ["train", "val"]
}
# Create a dataloader iterative
data_loaders = {
    x: torch.utils.data.DataLoader(
        image_datasets[x], batch_size=4, shuffle=True
    )
    for x in ["train", "val"]
}
# Calculate the size of each split of the dataset
data_sizes = {x: len(image_datasets[x]) for x in ["train", "val"]}

...
```

## Specifications

### Labels

If you are using this dataset for tasks other than classification, use
ImagenettoA, as it has some shared labels with the VOC dataset. Otherwise, use
ImagenettoB.

#### ImagenettoA

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

#### ImagenettoB

| Index | ImageNet Classes | ImageNet Labels    |
| :---- | :--------------- | :----------------- |
| 1     | n02092002        | Scottish deerhound |
| 2     | n02134084        | assault rifle      |
| 3     | n07745940        | bakery             |
| 4     | n04389033        | espresso           |
| 5     | n04252077        | ice bear           |
| 6     | n04579432        | ski                |
| 7     | n02749479        | snowmobile         |
| 8     | n04228054        | strawberry         |
| 9     | n02776631        | tank               |
| 10    | n07920052        | whistle            |

> Reference ImageNet class - label list:
> [aaronpolhamus/map_clsloc.txt](https://gist.github.com/aaronpolhamus/964a4411c0906315deb9f4a3723aac57).

### Training / Validation

This dataset has a **80%/20% train/validation** split.

## Caveats

There's no bounding-box annotations available yet, which means that you won't be
able to train detectors and such on this dataset. The purpose of this dataset is
more of an evaluation dataset rather than a training dataset.

## Clone with submodule

```bash
git clone --recurse-submodules -j8 git@github.com:daisylab-bit/imagenetto.git
```

## Behind the scenes

* See: [Behind the scenes.](./behind-the-scenes.md)

## Thanks

* [ImageNet Downloader](https://github.com/mf1024/ImageNet-Datasets-Downloader)
* [jfilter/split-folders](https://github.com/jfilter/split-folders)
* [fastai/imagenette](https://github.com/fastai/imagenette)

## License

[MIT](LICENSE).
