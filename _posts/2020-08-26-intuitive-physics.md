---
layout: post
title:  "Exploiting Physical Interactions to Increase the Understanding of Dynamics and Environment Properties for Enhanced Autonomy"
date:   2020-08-26 10:50:07
categories: research
description: "Intuitive Physics"
author: "Junbin Yuan and Wenshan Wang"
published: true
sidebar:  false
permalink: /Intuitive Physics/
image: /img/posts/2020-08-26-intuitive-physics/cover_figure.png
---


<hr>
The mobility of autonomous robots is still limited especially in real-world offroad terrain (as shown in the videos). We propose to enhance the autonomy of intelligent robots by actively learning the physical common sense and dynamic models of complex objects. This will enable these robots to automatically identify, understand and avoid difficult situations in adversarial environments, by learning physical models and robust skills in unstructured environments.


{% youtube um6AMVG8GXs %}
{% youtube zFzgL-3h2Ok %}

### Objectives
In particular, we will focus on

* Learning persistent 3D feature representations and intuitive physical models of objects and scenes through embodied observation

* Learning dynamic models based on persistent 3D visual feature representations and hierarchical prediction through active interaction;

* Creating robust and safe planning methods for autonomous mobile robots based on learned 3D representations and physics models. These aims will be tightly integrated into a coherent system that will be evaluated with a series of simulations as well as field experiments of increasing complexity.

This project will significantly advance scientific knowledge in machine learning (active learning, self-supervised learning, multi-modal learning, hierarchical reinforcement learning) and robotics (navigation, obstacle avoidance, model-based control).  In practice, it will push the limits of robot mobility in adversarial environments, and enable them to enter more difficult types of terrain.

Specifically, we will focus on the following three objectives that address key barriers for robust autonomy:

* **Learning by observation**: Learning persistent 3D feature representations and intuitive physical models of objects and scenes through embodied observation.

* **Learning by interaction**:Learning action-conditioned dynamic models based on persistent 3D visual feature representations and hierarchical prediction through active interaction.

* **Planning with learned representations and physics models**: Creating robust and safe planning methods for autonomous mobile robots based on the learned 3D representations and physics models as well as choosing information gathering actions (active learning). 

<figure>
 <img src="/img/posts/2020-08-26-intuitive-physics/image1.png" alt="three key aims" />
 <figcaption>
    The three key aims of this project. Using photo-realistic and physically correct simulation (supervised) and real-life (self-supervised, and unsupervised) observations and interactions are made. Those data are used to update the models and plan the next actions. The plans are actively exploring to improve the models in addition to achieving the desired goal (active learning). 
 </figcaption>
</figure>

### Approaches

* Similar to how a child starts to perceive and build a model of the world, we aim to learn the basic concept of intuitive physics. In particular, we will learn the concept of objects by moving and observing them in the environment.  Based on encoding the visual input into a persistent 3D feature representation using GRNNs one can detect 3D objects.

<figure>
 <img src="/img/posts/2020-08-26-intuitive-physics/image2.png" alt="app1" />
 <figcaption>
    
 </figcaption>
</figure>

* We will consider utilizing hierarchical models to make more precise and long-term prediction. More importantly, we will show how to generalize our approach from simulation to the real world, while minimizing the amount of required labeled data and to minimize the number of interactions required

* We propose a novel HRL framework, that allows the robot to learn from its past experience and expert demonstration within the same framework. The hierarchical physical models learned in Section 5.2 allow us to perform RL at multiple levels. The low level RL handles short-term goals reactively, while the high level RL plans in an abstract space for long-term goals.  As the learning proceeds, the robot continually learns to solve new tasks and distill new skills (temporal abstraction of actions).




### Project Members
* [Wenshan Wang](http://www.wangwenshan.com/)
* Katerina Fragkiadaki
* Max Yin
* Xian Zhou
* Sebastian Scherer
