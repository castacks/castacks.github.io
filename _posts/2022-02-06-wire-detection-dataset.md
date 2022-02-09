---
layout: post
title: "Wire detection dataset"
date: 2022-02-06 18:53:00
categories: datasets
description: "Wire detection dataset."
author: "Edited by Yaoyu Hu"
published: true
show_sidebar: false
# slim_content_width: true
permalink: /wire-detection/
image: /img/posts/2022-02-06-wire-detection/paper_screenshot_01.png
datatable: true
title_image: None
# hero_image: /img/posts/2021-06-15-trajair/trajAirBannerV2.png
# hero_height: is-large
# remove_hero_title: true
menubar_toc: true
---

<!-- ## Introduction ##  -->
This dataset is part of the work done for the paper "Wire Detection using Synthetic Data and Dilated Convolutional Networks for Unmanned Aerial Vehicles" puslished at IROS 2017. The authors of the paper are [Ratnesh Madaan](https://theairlab.org/team/alumni/ratnesh_madaan/), Daniel Maturana, and Sebastian Scherer.

### Dataset ###
The dataset provides pixel labels for wires such as power lines.

{% youtube https://youtu.be/z6sPz-WPCWQ %}

<figure>
 <img src="/img/posts/2022-02-06-wire-detection/paper_screenshot_01.png" style="width:99%"/>
 <figcaption>
A few samples from our synthetically generated dataset along with ground truth labels of wires.
 </figcaption>
</figure>

### Data Structure ###
The data samples are saved in individual folders. In each folder, we have the follwing files.

```
0380/
├── ground_truth_viz.png
├── labeled_ground_truth.png
├── labels.ground
└── original_image.png
```

The pixel values saved in `labeled_ground_truth.png` are defined as
- 1: non-wire pixel.
- 2: wire pixel.

The labels are visualized in `ground_truth_viz.png` as a black-and-white image. The `labels.ground` file is a text file showing the pixel coordinates of the end points of the individual lines.

<figure>
 <img src="/img/posts/2022-02-06-wire-detection/labels_groundtruth.png" width="200pix"/>
 <figcaption>
Content of the labels.ground file.
 </figcaption>
</figure>

<!-- Example images/gif -->

### Download ###
The data can be downloaded directly from [here](https://drive.google.com/file/d/1VXak_nKDszabQvDQQ1AG2bvmBlU7p18J/view?usp=sharing).
 
### Citation ###
```
@inproceedings{madaan2017wire,
  title={Wire detection using synthetic data and dilated convolutional networks for unmanned aerial vehicles},
  author={Madaan, Ratnesh and Maturana, Daniel and Scherer, Sebastian},
  booktitle={2017 IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS)},
  pages={3487--3494},
  year={2017},
  organization={IEEE}
}
```

### Related work also from the AirLab ###
```
@inproceedings{Madaan:2019kb,
  author = {Madaan, Ratnesh and Kaess, Michael and Scherer, Sebastian},
  booktitle = {Proceedings - IEEE International Conference on Robotics and Automation},
  doi = {10.1109/ICRA.2019.8793852},
  isbn = {9781538660263},
  issn = {10504729},
  month = may,
  pages = {5657--5664},
  title = {Multi-view reconstruction of wires using a catenary model},
  year = {2019}
}

@inproceedings{Dubey-2018-107515,
  author = {Dubey, Geetesh and Madaan, Ratnesh and Scherer, Sebastian},
  booktitle = {IEEE International Conference on Intelligent Robots and Systems},
  doi = {10.1109/IROS.2018.8593499},
  isbn = {9781538680940},
  issn = {21530866},
  month = oct,
  pages = {6311--6318},
  title = {DROAN - Disparity-Space Representation for Obstacle Avoidance: Enabling Wire Mapping Avoidance},
  year = {2018}
}
```

### Contact ###

[Yaoyu Hu (editor)](https://theairlab.org/team/yaoyuh/) - [yaoyuh@andrew.cmu.edu](mailto:yaoyuh@andrew.cmu.edu)

[Sebastian Scherer](https://theairlab.org/team/sebastian/) - [basti@andrew.cmu.edu](mailto:basti@andrew.cmu.edu)

### Related links ###
[Retnesh's blog post](https://madratman.github.io/wire_detection_iros_2017/)

<!-- ### Acknowledgments ### -->


### Term of use ###

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.
