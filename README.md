# imagenet-all-rounder

> all · rounder /ˌɔːlˈraʊndə/
>
> * a versatile person or thing.

`imagenet-all-rounder` is a small scale subset of 10 carefully chosen classes from [ImageNet](http://www.image-net.org/) containing ~3000 images.

## Quick usage

### Download

You can download the dataset (which contains 10 classes, each with ~300 images) from: [GitHub Release - imagenet_all_rounder.zip](https://github.com/spencerwooo/imagenet-all-rounder/releases/latest).

### Using the dataset

You can load the dataset with PyTorch.

```python
load the dataset
```

## Why this dataset?

I personally needed a dataset that can be used for multiple computer vision tasks including:

* Image classification (of course).
* Object detection.
* Semantic (Instance) segmentation.
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
