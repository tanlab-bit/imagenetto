# imagenet-all-rounder

> all · rounder /ˌɔːlˈraʊndə/
>
> * a versatile person or thing.

`imagenet-all-rounder` is a small scale subset of 10 carefully chosen classes from [ImageNet](http://www.image-net.org/) containing ~3000 training and validation images.

## Quick usage

### Download

You can download the dataset (which contains 10 classes, each with ~300 images) from: [GitHub Release - imagenet_all_rounder.zip](https://github.com/spencerwooo/imagenet-all-rounder/releases/latest).

### Using the dataset

You can load the dataset with PyTorch and torchvision.

```python
import os
import torch
import torchvision
from torchvision.transforms import transforms

# The root folder of the imagenet-all-rounder dataset
dataset_root = "./imagenet_all_rounder"

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

## Why this dataset?

I personally needed a dataset that can be used for multiple computer vision tasks including:

* Image classification (of course).
* Object detection.
* Semantic segmentation.
* _(and maybe)_ Image captioning.

Although there exists larger _all-in-one_, _multi-purpose_ datasets like the [Open Images Dataset](https://storage.googleapis.com/openimages/web/index.html), but I just wanted a small scale dataset to quickly validate my ideas and algorithms (much like the purpose of the [imagenette dataset](https://github.com/fastai/imagenette)). Also, class labels in the *Imagenette* dataset doesn't comply with other common pretrained detection, segmentation, and captioning models (because they are most often trained with COCO or Pascal VOC datasets). Hence, I present the `imagenet-all-rounder`!

## Specifications

### Structure

### Labels

### Training / Validation

80%/20% train/validation split.

## Caveats

No bounding-box labels available yet. Can't train detectors and such on this dataset, only pretrained models work.

## Behind the scenes

* See: [Behind the scenes.](./behind-the-scenes.md)

## Thanks

Special shout-out to the creators of [ImageNet Downloader](https://github.com/mf1024/ImageNet-Datasets-Downloader), [jfilter/split-folders](https://github.com/jfilter/split-folders), and of course, [fastai/imagenette](https://github.com/fastai/imagenette).

---

🍻 **`imagenet-all-rounder`** © Spencer Woo. Released under the [MIT License](https://github.com/spencerwooo/portfolio/blob/master/LICENSE).

Authored and maintained by Spencer Woo.

[@Portfolio](https://spencerwoo.com/) · [@GitHub](https://github.com/spencerwooo) · [@BIT](http://www.bit.edu.cn/)
