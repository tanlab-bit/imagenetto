# imagenet-all-rounder

> 🍻 Small scale multi-purpose image dataset (ImageNet subset) for image classification, object detection, semantic segmentation (and maybe image captioning).

## Quick usage

### Download

You can download the dataset (which contains 10 classes, each with ~300 images) from: [GitHub Release - imagenet_all_rounder.zip](https://github.com/spencerwooo/imagenet-all-rounder/releases/latest).

### Using the dataset

You can load the dataset with PyTorch.

```python
load the dataset
```

## Why this dataset?

I personally needed a dataset that shares multiple purposes including:

* Image classification (of course)
* Object detection
* Semantic (Instance) segmentation
* (And maybe) Image captioning

Although there exists larger "all-in-one", "multi-purpose" datasets like the [Open Images Dataset](https://storage.googleapis.com/openimages/web/index.html), but I just wanted a small scale dataset to quickly validate my ideas and algorithms (much like the purpose of the [imagenette dataset](https://github.com/fastai/imagenette)). Hence, I present the `imagenet-all-rounder`!

## Specifications

### Structure

### Classification labels to detector/segmentation labels

### Training / Validation

## Thanks

Special shout out to the creator of [ImageNet Downloader](https://github.com/mf1024/ImageNet-Datasets-Downloader), [jfilter/split-folders](https://github.com/jfilter/split-folders), and of course, [fastai/imagenette](https://github.com/fastai/imagenette).

---

🍻 `imagenet-all-rounder` © Spencer Woo. Released under the [MIT License](https://github.com/spencerwooo/portfolio/blob/master/LICENSE).

Authored and maintained by Spencer Woo.

[@Portfolio](https://spencerwoo.com/) · [@GitHub](https://github.com/spencerwooo) · [@BIT](http://www.bit.edu.cn/)
