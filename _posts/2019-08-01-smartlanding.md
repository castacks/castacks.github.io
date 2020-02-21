---
layout: post
title:  "Smart Landing and Obstacle Avoidance"
date:   2019-08-01 10:50:07
categories: research
description: "Smart Landing"
author: "Brady Moon"
published: true
sidebar:  false
permalink: /smart-landing-obstacle-avoidance/
image: /img/posts/2019-08-01-smartlanding/landObs.png
---

Below are various projects that allow a drone to fly and land safely in challenging environments.

### Return To Home
{% youtube Ge_W4uE8qfM %}
A good method for ensuring safe retrieval of a drone after radio signal is lost is a return home behavior. Current state estimation techniques using GPS do not perform this task to a high degree of accuracy and are not always reliable. We propose a method using a monocular downward facing fisheye lens camera to estimate relative position and guide the drone back to its starting position safely and accurately.

<hr>

### Landing Zone Evaluation
<!-- [embed]https://www.youtube.com/watch?v=CxoG0qwIsUg[/embed]  -->
<!-- {% youtube CxoG0qwIsUg %} -->

For autonomous landing, it is important to detect whether the landing zone is safe or not, including water, grass, ground, trees and so on. Current approaches mainly rely on depth sensor or semantic segmentation, which may be unavailable or unreliable. We propose a monocular video approach by geometrically analyzing whether the optical flow can form a plane. It shows robustness and high accuracy in large amounts of experiments.
<hr>

### Wire Detection
{% youtube 9VABb6Lc7B8 %}
Wire detection, depth estimation and avoidance is one of the hardest challenges towards the ubiquitous presence of robust autonomous aerial vehicles. We present an approach and a system which tackles these three challenges along with generic obstacle avoidance as well. First, we perform monocular wire detection using a convolutional neural network under the semantic segmentation paradigm, and obtain a confidence map of wire pixels. Along with this, we also use a binocular stereo pair to detect other generic obstacles. We represent wires and generic obstacles using a disparity space representation and do a C-space expansion by using a non-linear sensor model we develop. Occupancy inference for collision checking is performed by maintaining a pose graph over multiple disparity images. For avoidance of wire and generic obstacles, we use a precomputed trajectory library, which is evaluated in an online fashion in accordance to a cost function over proximity to the goal. We follow this trajectory with a path tracking controller. Finally, we demonstrate the effectiveness of our proposed method in simulation for wire mapping, and on hardware by multiple runs for both wire and generic obstacle avoidance.

<hr>

### State Estimation
{% youtube 0ifPnbA60BI %}
Visual-inertial odometry (VIO) is effective in navigating a GPS-denied environment. We developed an optimization-based fixed-lag smoother stereo VIO that utilizes information sparsification. From an information-theoretical point of view, our method obtains more optimal solutions compared to other state-of-the-art methods such as OKVIS and VINS-MONO. Experimental results show our method achieves accurate position estimates in both indoor and outdoor flight tests.

<hr>

### Reflective and Thin Obstacle Detection
{% youtube ypLYC6c4hwQ %}
Reflective objects like windows are difficult to perceive using typical stereo camera setups. We use a micropolarizer camera capable of detecting reflective objects to estimate the depth of a scene. Thin obstacles like wires are also difficult to detect with typical binocular stereo camera setups. We use trinocular cameras and match the wire detection results to estimate depth to wires in a scene.

<hr>

## Simulation
{% youtube MroiDvXRfSE %}
We use AirSim, a plugin for Unreal Engine, to simulate our obstacle avoidance methods for a drone with five stereo camera pairs. The video above shows the drone trying to reach the green user controlled goal point while avoiding trees.
