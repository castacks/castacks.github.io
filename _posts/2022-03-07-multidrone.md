---
layout: post
title: "3D Human Reconstruction with Collaborative Aerial Cameras"
date: 2022-03-07 12:00:00
categories: research
description: "3D Recontruction with Multiple Drones"
author: "Rebecca Martin"
published: true
sidebar:  false
permalink: /multidrone/
image: /img/posts/2022-03-07-multidrone/poster-demo.gif
datatable: true
title_image: None
hero_image: /img/posts/2022-03-07-multidrone/multidrone-timelapse-hero.png
hero_height: is-large
remove_hero_title: true
link-new-tab: true
---

Aerial vehicles are revolutionizing applications that require capturing the 3D structure of dynamic targets in the wild, such as sports, medicine and entertainment. The core challenges in developing a motion-capture system that operates in outdoors environments are: (1) 3D inference requires multiple simultaneous viewpoints of the target, (2) occlusion caused by obstacles is frequent when tracking moving targets, and (3) the camera and vehicle state estimation is noisy. We present a real-time aerial system for multi-camera control that can reconstruct human motions in natural environments without the use of special-purpose markers.
<figure>
    <img src="/img/posts/2022-03-07-multidrone/poster-demo.gif" />
    <figcaption>
        We present a multi-drone motion capture system for 3D human reconstruction in the wild. Our framework coordinates 
aerial cameras to optimally reconstruct the target’s body pose while avoiding obstacles and occlusions outdoors.
    </figcaption>
</figure>

## Multi-camera coordination

We formulate a multi-camera coordination scheme with the goal of maximizing the reconstructed 3D pose quality of dynamic targets. We develop a scalable two-stage system with long planning time horizons and real-time performance that uses a centralized planner for formation control and a decentralized trajectory optimizer that runs on each robot.

<figure>
    <img src="/img/posts/2022-03-07-multidrone/real-life-flight.png" />
    <figcaption>
        Real-life flight among obstacle. Our adaptive formation rotates clockwise avoiding the mound to maintain optimal reconstruction angle.
    </figcaption>
</figure>

We provide studies evaluating system performance in simulation, and validate real-world performance using two drones while a target performs activities such as jogging and playing soccer.
<figure>
    <img src="/img/posts/2022-03-07-multidrone/reconstruction-dynamic.png" />
    <figcaption>
        3D reconstruction of a highly dynamic target
playing soccer.
    </figcaption>
</figure>

## Video

{% youtube jxt91vx0cns %}

## Additional Info

### Citation
```
@inproceedings{ho2021_human3d,
  author = {Ho, Cherie and Jong, Andrew and Freeman, Harry and Rao, Rohan and Bonatti, Rogerio and Scherer, Sebastian},
  title = {3D Human Reconstruction in the Wild with Collaborative Aerial Cameras},
  booktitle = {IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS)},
  year = {2021},
  month = sep,
  url = {https://arxiv.org/abs/2108.03936},
  video = {https://youtu.be/jxt91vx0cns}
}
```


Please refer to our [paper](https://arxiv.org/pdf/2108.03936.pdf) for details.


### Contributors

 - [Cherie Ho](https://cherieho.com) <cherieh [at] cmu [dot] edu>
 - Andrew Jong
 - Harry Freeman
 - Rohan Rao
 - Rogerio Bonatti
 - [Prof. Sebastian Scherer](http://theairlab.org/team/sebastian/) <basti [at] cmu [dot] edu>
