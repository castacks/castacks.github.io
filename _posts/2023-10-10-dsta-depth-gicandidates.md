---
layout: post
title: "Geometry-Informed Distance Candidate Selection for Omnidirectional Stereo Vision"
date: 2023-10-10 20:00:00
categories: research
description: "Omnidirectional Multiview Stereo Vision with Fisheye Images"
author: "Conner Pulling"
published: true
show_sidebar: false
# slim_content_width: true
permalink: /gicandidates/
image: /img/posts/2023-10-10-dsta-depth-gicandidates/result_video_smaller.gif
datatable: true
title_image: None
hide_hero: true
remove_hero_title: true
menubar_toc: true
link-new-tab: true
---

<a class="button" itemprop="github" href="https://github.com/castacks/dsta_mvs_lightning" target="_blank">
    <svg class="svg-inline--fa fa-github fa-w-16 fa-lg" aria-hidden="true" data-prefix="fab" data-icon="github" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 496 512" data-fa-i2svg=""><path fill="currentColor" d="M165.9 397.4c0 2-2.3 3.6-5.2 3.6-3.3.3-5.6-1.3-5.6-3.6 0-2 2.3-3.6 5.2-3.6 3-.3 5.6 1.3 5.6 3.6zm-31.1-4.5c-.7 2 1.3 4.3 4.3 4.9 2.6 1 5.6 0 6.2-2s-1.3-4.3-4.3-5.2c-2.6-.7-5.5.3-6.2 2.3zm44.2-1.7c-2.9.7-4.9 2.6-4.6 4.9.3 2 2.9 3.3 5.9 2.6 2.9-.7 4.9-2.6 4.6-4.6-.3-1.9-3-3.2-5.9-2.9zM244.8 8C106.1 8 0 113.3 0 252c0 110.9 69.8 205.8 169.5 239.2 12.8 2.3 17.3-5.6 17.3-12.1 0-6.2-.3-40.4-.3-61.4 0 0-70 15-84.7-29.8 0 0-11.4-29.1-27.8-36.6 0 0-22.9-15.7 1.6-15.4 0 0 24.9 2 38.6 25.8 21.9 38.6 58.6 27.5 72.9 20.9 2.3-16 8.8-27.1 16-33.7-55.9-6.2-112.3-14.3-112.3-110.5 0-27.5 7.6-41.3 23.6-58.9-2.6-6.5-11.1-33.3 2.6-67.9 20.9-6.5 69 27 69 27 20-5.6 41.5-8.5 62.8-8.5s42.8 2.9 62.8 8.5c0 0 48.1-33.6 69-27 13.7 34.7 5.2 61.4 2.6 67.9 16 17.7 25.8 31.5 25.8 58.9 0 96.5-58.9 104.2-114.8 110.5 9.2 7.9 17 22.9 17 46.4 0 33.7-.3 75.4-.3 83.6 0 6.5 4.6 14.4 17.3 12.1C428.2 457.8 496 362.9 496 252 496 113.3 383.5 8 244.8 8zM97.2 352.9c-1.3 1-1 3.3.7 5.2 1.6 1.6 3.9 2.3 5.2 1 1.3-1 1-3.3-.7-5.2-1.6-1.6-3.9-2.3-5.2-1zm-10.8-8.1c-.7 1.3.3 2.9 2.3 3.9 1.6 1 3.6.7 4.3-.7.7-1.3-.3-2.9-2.3-3.9-2-.6-3.6-.3-4.3.7zm32.4 35.6c-1.6 1.3-1 4.3 1.3 6.2 2.3 2.3 5.2 2.6 6.5 1 1.3-1.3.7-4.3-1.3-6.2-2.2-2.3-5.2-2.6-6.5-1zm-11.4-14.7c-1.6 1-1.6 3.6 0 5.9 1.6 2.3 4.3 3.3 5.6 2.3 1.6-1.3 1.6-3.9 0-6.2-1.4-2.3-4-3.3-5.6-2z"></path></svg>
</a>
<a class="button" itemprop="pdf" href="/img/posts/2023-10-10-dsta-depth-gicandidates/ICRA_2024__Pulling__Tan__Hu__Scherer.pdf" target="_blank">
    <i class='fas fa-file'></i>
</a>

This is the project page of the ICRA submission, "Geometry-Informed Distance Candidate Selection for Adaptive Lightweight Omnidirectional Stereo Vision with Fisheye Images":

<figure>
{% youtube SMDn6UkYAu8 %}
<figcaption>ICRA '24 Submission Video.</figcaption>
</figure>

### Overview

Depth perception is essential for mobile robots in navigation and obstacle avoidance. LiDAR devices are commonly used due to their accuracy and speed, but they have mechanical complexities and can be costly. Current multiview stereo (MVS) vision methods with fisheye images are either not robust enough or cannot run in real-time. Many learning-based methods are very computationally-expensive due to the cost volume approach. 

The study introduces Geometry-Informed (GI) distance candidates which can be integrated into many omnidirectional MVS models that use a fixed number of distance candidates. GI candidates aim to improve depth estimation accuracy and decrease the inference time by reducing the number of candidates needed. 

Additionally, GI candidates convey an interesting property onto MVS models. The GI candidate distribution is dependent on baseline distance. So as the baseline distance between reference and query cameras changes, so does the GI candidates chosen. We show that this dependency allows camera locations can be adjusted post-training and the model still can perform well by adjusting the GI candidates to the new distribution.

<figure>
 <img src="/img/posts/2023-10-10-dsta-depth-gicandidates/gicandidates_banner.png" alt="Sample results on the Scene Flow dataset" style="width:450px;height:300px;"/>
 <figcaption>Geometry-Informed (GI) Candidate Distribution compared to even candidate spacing in the inverse distance space.</figcaption>
</figure>

### 100k-Samples Multiview Stereo Vision Dataset


<figure>
 <img src="/img/posts/2023-10-10-dsta-depth-gicandidates/dataset_banner.png" alt="Sample results on the Scene Flow dataset" />
 <figcaption>Overview of the 65+ environments available in the dataset.</figcaption>
</figure>

The dataset consists of 112,344 samples collected from 68 environments. Each sample consists of RGB fisheye images and ground truth depth for each of the three cameras in our specific configuration. Our configuration uses an evaluation board with three fisheye cameras in a triangular configuration. Additionally, each sample has a ground truth RGB and distance map panorama at the reference camera's location.

The dataset will be released soon on our project github page.

### More Results

<figure>
{% youtube Hb1dYEkeRDo %}
<figcaption>Point cloud representation of real-world inferencing.</figcaption>
</figure>

Results show a comparison of synthetically-generated images from unknown environments. The Geometry-Informed (GI) candidates distribution improves depth candidate selection. Using GI candidates leads to:

- Better accuracy in distance estimation
- Faster model performance

An additional benefit of the GI candidates is their ability to accommodate changes in the distance between cameras after training without re-training.

The following table presents performance metrics across various models:

| Model   | Candidate Type | Number | MAE   | RMSE  | SSIM  | Time (ms) | GPU Start (MB) | GPU Peak (MB) |
| ------- | -------------- | ------ | ----- | ----- | ----- | --------- | -------------- | ------------- |
| RTSS[1] | EV             | 32     | 0.053 | 0.101 | 0.776 | 144       | 330            | 4240          |
| E8      | EV             | 8      | 0.013 | 0.032 | 0.862 | 65        | 790            | 1030          |
| G8      | GI             | 8      | 0.012 | 0.029 | 0.867 | 65        | 790            | 1030          |
| E16     | EV             | 16     | 0.011 | 0.028 | 0.876 | 111       | 790            | 1230          |
| G16     | GI             | 16     | 0.010 | 0.028 | 0.877 | 111       | 790            | 1230          |
| G16V    | GI             | 16     | 0.013 | 0.029 | 0.861 | 111       | 790            | 1230          |
| G16VV   | GI             | 16     | 0.012 | 0.028 | 0.872 | 114       | 800            | 1090          |

Pre-trained models will be released soon on our github project page.

### Manuscript

Please refer to this [link](/img/posts/2023-10-10-dsta-depth-gicandidates/ICRA_2024__Pulling__Tan__Hu__Scherer.pdf).


```
@misc{hu2021orstereo,
      title={Geometry-Informed Distance Candidate Selection for Adaptive Lightweight Omnidirectional Stereo Vision with Fisheye Images}, 
      author={Conner Pulling and Je Hon Tan and Yaoyu Hu and Sebastian Scherer},
      year={2023},
      primaryClass={cs.CV}
}
```

### Contact 

- Conner Pulling: (cpulling [at] andrew [dot] cmu [dot] edu)
- Yaoyu Hu: (yaoyuh [at] andrew [dot] cmu [dot] edu)
- Sebastian Scherer: (basti [at] cmu [dot] edu) 

### Acknowledgments

This work was supported by Singapore's Defence Science and Technology Agency (DSTA).