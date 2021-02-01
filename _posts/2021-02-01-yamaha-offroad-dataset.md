---
layout: post
title: "Yamaha-CMU Off-Road Dataset"
date: 2021-02-01 13:17:07
categories: datasets
description: "Yamaha Off-Road Dataset"
author: "Wenshan Wang"
published: true
sidebar: false
permalink: /yamaha-offroad-dataset/
image: /img/posts/2021-02-01-offroad/web_cover_figure.png
datatable: true
link-new-tab: true
---

We have collected Yamaha-CMU-Off-Road, or YCOR, which consists of 1076 images collected in four different locations in Western Pennsylvania and Ohio (as shown in the figure), spanning three different seasons. 

The dataset was labelled using a polygon-based interface with eight classes: sky, rough trail, smooth trail, traversable grass, high vegetation, non-traversable low vegetation, obstacle. 
The polygon labels were post-processed using a Dense CRF to densify the labels; the output of the CRF was manually inspected, and in some cases corrected, to ensure no wrong labels were created.

We believe our dataset is more diverse and challenging than DeepScene. In the following figure, we show the mean RGB image and pixelwise labelmode of each dataset. The DeepScene dataset shows a left-right bias and more predictable structure than ours; if we used the pixelwise mode as a baseline classifier, we would obtain 0.30 pixelwise error-rate in DeepScene, but 0.51 in ours. However, we acknowledge that compared to recent efforts, both datasets are relatively small.

<figure>
 <img src="/img/posts/2021-02-01-offroad/dataset_features.png" alt="Data and segmentation labels" />
 <figcaption>
 First two columns: A comparison of dataset statistics. We show the mean RGB frame and the pixelwise mode for the labelled frames in the training sets of each dataset used. Last column: a map with locations where YCOR was collected.
 </figcaption>
</figure>


Our current split has 931 training images, and 145 validation images. This split was generated randomly, ensuring there was no overlap in data collection session between images in the training and validation split. However, there is overlap in locations used. 

<figure>
 <img src="/img/posts/2021-02-01-offroad/dataglance.png" alt="Data and segmentation labels" />
 <figcaption>
 A glance of the dataset.
 </figcaption>
</figure>

## Citation ## 

Please read our [paper](https://www.ri.cmu.edu/wp-content/uploads/2017/11/semantic-mapping-offroad-nav-compressed.pdf) for details. 

```
@inproceedings{maturana2018real,
  title={Real-time semantic mapping for autonomous off-road navigation},
  author={Maturana, Daniel and Chou, Po-Wei and Uenoyama, Masashi and Scherer, Sebastian},
  booktitle={Field and Service Robotics},
  pages={335--350},
  year={2018},
  organization={Springer}
}
```

## Download

The dataset can be downloaded [here](https://cmu.box.com/s/3fngoljhcwhqf2z5cbepufh331qtesxt).   

### Contact

Sebastian Scherer - (basti [at] cmu [dot] edu)

Wenshan Wang - (wenshanw [at] andrew [dot] cmu [dot] edu) 

### Term of use

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.