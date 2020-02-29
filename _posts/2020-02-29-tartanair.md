---
layout: post
title: "TartanAir: A Dataset to Push the Limits of Visual SLAM"
date: 2020-02-29 13:55:07
categories: datasets
description: "TartanAir"
author: "Wenshan Wang"
published: true
sidebar: false
permalink: /alfa-dataset/
image: /img/posts/2020-02-29-tartanair/web_cover_figure.png
datatable: true
link-new-tab: true
---

# The mission #

Simultaneous Localization and Mapping (SLAM) is one of the most fundamental capabilities necessary for robots. Due to the ubiquitous availability of images, Visual SLAM (V-SLAM) has become an important component of many autonomous systems. Impressive progress has been made with both geometric-based methods and learning-based methods. However, developing robust and reliable SLAM methods for real-world applications is still a challenging problem. Real-life environments are full of difficult cases such as light changes or lack of illumination, dynamic objects, and texture-less scenes. Current popular benchmarks such as KITTI, TUM RGB-D SLAM datasets, and EuRoC MAV cover relatively limited scenarios and motion patterns compared to real-world cases. 

We collect a large dataset using photo-realistic simulation environments. We minimize the sim2real gap by utilizing a large number of environments with various styles and diverse scenes. A special goal of our dataset is to focus on the challenging environments with changing light conditions, adverse weather, and dynamic objects. State-of-the-art SLAM algorithms are struggled in tracking the camera pose in our dataset and constantly getting lost on some challenging sequences. We propose a metric to evaluate the robustness of the algorithm. In addition, we develop an automatic data collection pipeline, which allows us to process more environments with minimum human intervention. 

The four most important features of our dataset are: 

- Large size diverse realistic data
- Multimodal ground truth labels
- Diversity of motion patterns
- Challenging Scenes

<span style="color:red"> A youtube video should go here. </span>

# A wide variety of data #

## Simulated scenes ##
We have adopted more than 50 photo-realistic simulation envrionments in the [Unreal Engine][UnrealEngine]. The environemnts provide us a wide range of scenarios which covers many interesting yet challenging situations. The simulation scenes consist of

[UnrealEngine]: https://www.unrealengine.com/

- Indoor and outdoor scnes with detailed 3D objects. We have multi-room, richly decorated indoor environments. For outdoor simulations, there are vairous kinds of building, trees, terrians, and landscapes.
- Sepcial purpose facilities and ordinary household scenes.
- Rural and urban scenes.
- Real-life and sci-fi scenes.

<figure>
 <img src="/img/posts/2020-02-29-tartanair/environments.png" alt="Simulated environments" />
 <figcaption>
 A glance of the simulated environments.
 </figcaption>
</figure>

## Challenging visual effects ##
In some simulations, we simulated multiple types of challenging visual effects.

- Hard lighting conditions. Day-night alternating. Low-lighting. Rapidly changing illuminations.
- Weather effects. Clear, raining, snowing, windy, and fog.
- Seasonal change.

## Aggressive ego motions ##

In each simulated environment, we gather data by following multiple routes and making movments with different level of aggressiveness. The virtual camera can move slowly and smoothly with few sudden jittering actions. Or it can have intensive and violent actions mixed with significant rolling and yaw motions.


# Multimodal ground truth labels #

By unleashing the power of the [Unreal Engine][UnrealEngine] and [AirSim][AirSimSite], we can extract various types of ground truth labels including depth, semantic segmentaion tag, and camera pose. From the extracted raw data, we further compute other ground truth labels such as optical flow, stereo disparity, simulated multi-line LiDAR points, and simulated IMU readings.

[AirSimSite]: https://github.com/microsoft/AirSim

# Data acquisition pipe-line #

We develop a highly automated pipe-line to faciliate the data acquisition.

For each environment, we build a occupancy map by incremental mapping.

Base on the map, we then sample a bunch of trajectories for the virtual camera to follow.

A set of virtual cameras follow the trajectorie to capture raw data from Unreal Engine and AirSim.

Raw data are processed to generate labels such as optical flow, stereo disparity, simulated LiDAR points, and simualted IMU readings.

Data verification. Verify the data synchronization and the accuracy of the derived labels.

**<span style="color: #800000;">Please refer to the *Download* section below to download the dataset and the code.</span>**

### Publications

Please use the following citation for the dataset: 

*BibTeX:* 

```
@article{keipour:dataset:2019,
author={Azarakhsh Keipour and Mohammadreza Mousaei and Sebastian Scherer},
title={ALFA: A Dataset for UAV Fault and Anomaly Detection},
journal = {The International Journal of Robotics Research},
volume = {},
number = {},
pages = {},
year = {In press},
}
```

*IEEE Style:* 

```
A. Keipour, M. Mousaei, and S. Scherer, “ALFA: A dataset for UAV fault and anomaly detection,” The International Journal of Robotics Research, In press. 
```

### Download

Coming soon.

### Contact

Wenshan Wang - (wenshanw [at] andrew [dot] cmu [dot] edu) 

Sebastian Scherer - (basti [at] cmu [dot] edu)

### Acknowledgments 

This work was supported through .
