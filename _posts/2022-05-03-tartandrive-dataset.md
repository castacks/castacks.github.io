---
layout: post
title: "TartanDrive: A Large-Scale Dataset for Learning Off-Road Dynamics Models"
date:   2022-05-03 10:33:07
categories: datasets
description: "TartanDrive"
author: "Wenshan Wang"
published: true
sidebar: false
permalink: /tartandrive-dataset/
image: /img/posts/2022-05-03-tartandrive/tartandrive.png
datatable: true
link-new-tab: true
---


## Abstract ## 

We present TartanDrive, a large scale dataset for learning dynamics models for off-road driving. We collected a dataset of roughly 200,000 off-road driving interactions on a modified Yamaha Viking ATV with seven unique sensing modalities in diverse terrains. To the authors’ knowledge, this is the largest real-world multi-modal off-road driving dataset, both in terms of number of interactions and sensing modalities. We also benchmark several state-of-the-art methods for model-based reinforcement learning from high-dimensional observations on this dataset. We find that extending these models to multi-modality leads to significant performance on off-road dynamics prediction, especially in more challenging terrains. We also identify some shortcomings with current neural network architectures for the off-road driving task. 

## Citation ## 

Please read our [paper](https://arxiv.org/abs/2003.14338) for details. 

```
@inproceedings{triest2022tartandrive,
  title={Tartandrive: A large-scale dataset for learning off-road dynamics models},
  author={Triest, Samuel and Sivaprakasam, Matthew and Wang, Sean J and Wang, Wenshan and Johnson, Aaron M and Scherer, Sebastian},
  booktitle={2022 International Conference on Robotics and Automation (ICRA)},
  pages={2546--2552},
  year={2022},
  organization={IEEE}
}
```

## Download

Please checkout [here](https://github.com/castacks/tartan_drive) for the instruction of accessing the data.  


### Contact

Wenshan Wang - (wenshanw [at] andrew [dot] cmu [dot] edu) 

Sebastian Scherer - (basti [at] cmu [dot] edu)

### Term of use

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.