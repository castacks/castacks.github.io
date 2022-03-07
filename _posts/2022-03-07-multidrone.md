---
layout: post
title: "3D Human Reconstruction with Collaborative Aerial Cameras"
date: 2022-03-07 12:00:00
categories: research
description: "3D Recontruction with Multi-drone teams"
author: "Rebecca Martin"
published: true
sidebar:  false
permalink: /multidrone/
image: /img/posts/2022-03-07-multidrone/poster-demo.gif
datatable: true
title_image: None
link-new-tab: true
---

Aerial vehicles are revolutionizing applications that require capturing the 3D structure of dynamic targets in the wild, such as sports, medicine and entertainment. The core challenges in developing a motion-capture system that operates in outdoors environments are: (1) 3D inference requires multiple simultaneous viewpoints of the target, (2) occlusion caused by obstacles is frequent when tracking moving targets, and (3) the camera and vehicle state estimation is noisy. We present a real-time aerial system for multi-camera control that can reconstruct human motions in natural environments without the use of special-purpose markers.
<figure>
    <img src="/img/posts/2022-03-07-multidrone/poster-demo.gif" />
    <figcaption>
        A tracking and reconstruction demo.
    </figcaption>
</figure>

## Multi-camera coordination

We formulate a multi-camera coordination scheme with the goal of maximizing the reconstructed 3D pose quality of dynamic targets. We develop a scalable two-stage system with long planning time horizons and real-time performance that uses a centralized planner for formation control and a decentralized trajectory optimizer that runs on each robot.

<figure>
    <img src="/img/posts/2022-03-07-multidrone/real-life-flight.png" />
    <figcaption>
        Placeholder
    </figcaption>
</figure>

We provide studies evaluating system performance in simulation, and validate real-world performance using two drones while a target performs activities such as jogging and playing soccer.
<figure>
    <img src="/img/posts/2021-10-06-aircode/reconstruction-comp.png" />
    <img src="/img/posts/2021-10-06-aircode/reconstruction-dynamic.png" />
</figure>

## Video

{% youtube jxt91vx0cns %}

## Publication

 - Cherie Ho, Andrew Jong, Harry Freeman, Rohan Rao, Rogerio Bonatti, Sebastian Scherer. 3D Human Reconstruction in the Wild with Collaborative Aerial Cameras. *arXiv preprint arXiv:2108.03936 (2021)*.


Please refer to our [Paper](https://arxiv.org/pdf/2108.03936.pdf) for details.


## Contact

 - [Cherie Ho](https://cherieho.com) <cherieh [at] cmu [dot] edu>
 - [Sebastian Scherer](http://theairlab.org/team/sebastian/) <basti [at] cmu [dot] edu>
