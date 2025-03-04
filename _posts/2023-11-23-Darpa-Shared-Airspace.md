---
layout: post
title: "Shared Airspace"
date: 2023-11-23 2:00:01
categories: research
description: "Safe and Seamless Operation of Crewed and Uncrewed Aircraft in Shared Airspace"
author: "Yao He"
published: true
show_sidebar: false
# slim_content_width: true
permalink: /Shared_Airspace/
image: /img/posts/2023-11-23-darpa-shared-airspace/DARPA_CMU_Collision_Avoidance_Demo.png
datatable: true
title_image: None
hero_image: /img/posts/2023-11-23-darpa-shared-airspace/team.jpg
hero_height: is-large
remove_hero_title: true
menubar_toc: true
tags: Planning, Perception
---

An autonomy system that keeps UAVs and manned traffic safely separated and behave as expected in GNSS-denied situations by anticipating, reacting, and coordinating with other aircraft in uncontrolled airspace with only passive (vision-based) sensing.

Currently, crewed and uncrewed traffic are strictly separated leading to reduced airspace efficiency and requiring explicit ATC coordination to guarantee safety. To achieve seamless shared crewed/uncrewed airspace:

- **Uncrewed:** low SWaP-C form factor class 1 and 2 UAVs.
- **Sensing:** reliable, and zero active emission, aircraft detection and trajectory prediction.
- **Behavior:** hintelligently coordinates airspace and meet the expectations of a typical traffic flow.
- **Safety:** guarantees safe separation.
- **Robustness:** GNSS-denied localization during outages.

Our focus is on the following research thrust areas:
- **Passive aircraft detection and tracking**
- **Safety system**
- **GNSS-denied localization**

## 1. Systems

### 1. 1. Drone Platform

<figure>
  <img src="/img/posts/2023-11-23-darpa-shared-airspace/UAVs_cropped.jpg" style="width:100%" />
  <figcaption>
  <b>Fig. 1:</b> From Left to right: M600, VTOL, Areulia X6 (Ownship).
 </figcaption>
</figure>

### 1. 2. Testbeds

<figure>
  <img src="/img/posts/2023-11-23-darpa-shared-airspace/testbed.png" style="width:100%" />
  <figcaption>
  <b>Fig. 2:</b> Shared Airspace Testbeds.
 </figcaption>
</figure>



## 2. Aircraft Detection and Tracking
Robust and long-range aircraft and drone detection in a small SWaP-C and without emitting radiation is a critical capability to enable small UAVs to be able to operate in close proximity
to other aircraft. We use a multi-stage approach, where in downstream stages combine geometric and learning based methods to filter initial detections. We have found that such an approach maintains
the ability to detect all relevant objects (i.e., high recall) while reducing the number of false positives. We propose to use a multi-object tracking management system that uses global
inter-frame matching to track the geometric state of the observed aircraft. Relevant paper could be found [here](https://arxiv.org/abs/2209.12849).
<figure>
  <img src="/img/posts/2023-11-23-darpa-shared-airspace/detection_and_tracking.png" style="width:100%" />
  <figcaption>
  <b>Fig. 3:</b> Aircraft Detection and Tracking Overview. 
 </figcaption>
</figure>

## 3. Safety System
Our safety system module focuses on the dual problem of Traffic Avoidance (TA) (en-
suring safe separation distance from other aircrafts) as well as Collision Avoidance (CA)
(time-sensitive maneuvers to avoid Near Mid Air Collisions (NMAC)). There are multiple
layers of complexity we aim to account for in ensuring safe behavior. We devise a hybrid
safety system for providing an efficient solution for the Detect and Avoid problem.

<figure>
  <img src="/img/posts/2023-11-23-darpa-shared-airspace/DAA.png" style="width:100%" />
  <figcaption>
  <b>Fig. 4:</b> Safety System Overview.
 </figcaption>
</figure>

### 3. 1. Homogeneous Agent Traffic Avoidance ###
We first focus on ensuring safe separation of drones in the airspace with other drones. This will be achieved by designing efficient
supervisory filters that keep agents in the known safe space. This component of the safety
module will act as a filter on existing plans generated by the planning module. It will
ensure suggested plans do not result in the agent entering collision volumes of any other
agent in the system. In case of violation of the defined safe separation, it will minimally
modify the existing plan or pick from a fixed set of safe trajectories to ensure traffic avoidance.

### 3. 2. Homogenous Agent Collision Avoidance ###
Collision avoidance will be performed based on decision-theoretic planning. Threat detection will be performed by computing
multiple variables like time to closest approach, slant range, bearing, angular turn rate et
cetera. These state variables will be calculated by fusing information from multiple surveil-
lance sources like radar, ADS-B, and visual imagery while explicitly factoring in the sensors’
uncertainty. We will build upon existing collision avoidance logics and modify them to cater
to drone collision avoidance. Threat resolution will be performed using our drone collision
avoidance logic based on estimated state variables from the previous step.

### 3. 3. Hetergoenous Agent TA and CA ###
To account for heterogenous agents, we will factor in different dynamics model associated with different types of agents for state estimation and
resolution. We also plan to improve on existing avoidance logics by straying away from the
acceleration based models for intruders. This will be done by explicitly leveraging our intent
and trajectory prediction modules while computing resolution advisories.


<figure>
  <img src="/img/posts/2023-11-23-darpa-shared-airspace/daa.gif" style="width:100%" />
  <figcaption>
  <b>Fig. 5:</b> Sampled DAA Field Test Demonstration of Head-On Scenario.
 </figcaption>
</figure>


## 4. Vision-based GNSS-Denied Localization

Robust and accurate localization for Unmanned Aerial Vehicles (UAVs) is an essential capability to achieve autonomous and long-range flights. Current methods rely heavily on GNSS, which is vulnerable to jamming, spoofing, and environmental interference. In this work, we develop a GNSS-denied localization approach for UAVs that harnesses both Visual-Inertial Odometry (VIO) and Visual Place Recognition (VPR) using a foundation model (AnyLoc).
We present a novel vision-based pipeline that works exclusively with a nadir-facing camera, an Inertial Measurement Unit (IMU), and pre-existing satellite imagery for robust and accurate localization in varied environments and conditions. Our system demonstrated average localization accuracy within a 20-meter range, with a minimum error below 1 meter, under real-world conditions marked by drastic changes in environmental appearance and with no assumption of the vehicle's initial pose. The method is proven to be effective and robust, addressing the crucial need for reliable UAV localization in GNSS-denied environments, while also being computationally efficient enough to be deployed on resource-constrained platforms. Check out AnyLoc and FoundLoc websites for more information and demos!

[AnyLoc Website](https://anyloc.github.io/)
<figure>
  <img src="/img/posts/2023-11-23-darpa-shared-airspace/anyloc.png" style="width:100%" />
  <figcaption>
  <b>Fig. 6:</b> AnyLoc Overview. 
 </figcaption>
</figure>

[FoundLoc Website](https://anyloc.github.io/FoundLoc/)
<figure>
  <img src="/img/posts/2023-11-23-darpa-shared-airspace/foundloc.png" style="width:100%" />
  <figcaption>
  <b>Fig. 7:</b> FoundLoc Overview.
 </figcaption>
</figure>

## Contributors
* [Jay Patrikar](https://www.jaypatrikar.me/) 

* [Nikhil Keetha](https://nik-v9.github.io/) 

* [Ivan Cisneros](https://www.ivancisneros.com/) 

* [Yao He](https://shockwaveHe.github.io/) 

* [Zelin Ye](https://www.linkedin.com/in/zelinye) 

* [Ian Higgins]({https://www.linkedin.com/in/ian-higgins-53957718a) 

* [Parv Kapoor](https://parvkpr.github.io)

* [Yaoyu Hu](https://theairlab.org/team/yaoyuh/)

* [Dr. Jean Oh](https://www.cs.cmu.edu/~jeanoh/) (Co-PI)

* [Dr. Sebastian Scherer](https://theairlab.org/team/sebastian/) (PI)

