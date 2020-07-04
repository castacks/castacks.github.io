---
layout: page
title: Air Lab Summer School
subtitle: 6-10 July 2020
show_sidebar: false
hide_footer: false
permalink: /summer2020/
hero_image: /img/tartan2.png
---

# General Information
The goal of this boot camp is to get each student started with the basics, broaden their horizon beyond their own research topic, understand the tradeoffs of different approaches in our context (real-time, flying robots, etc.) and make our students more “dangerous” with some code/tools that they can use to jump start their research.

There will be three sessions per day, covering the topics of <span style="color:blue">Perception</span>, <span style="color:#b50000">State Estimation</span>, <span style="color:green">Action</span>, and <span style="color:#e68200">Infrastructure</span>. Each session will consist of a 1 hour lecture followed by a 1.5 hour lab.

Click on a session in the schedule to jump to its session overview.

<!-- Test YouTube Streaming and add instructions for how streaming will work-->

<!-- Need to add slides and video links later -->
<!-- Make sure to save presentation video -->
# Schedule

|Day  |Time   | Session |Host   |Links   |
|---|---|---|---|---|
|Mon. July 6  | 9:00-11:30 AM EST| <a href="#3.1"><span style="color:green">3.1 Motion Planning Tutorial (Basics)</span></a>             | [Basti](/team/sebastian/)  | [slides](https://bitbucket.org/castacks/matlab_planning_toolbox/raw/92f2e209e271db058a3453e45fda2cf134fef536/doc/lecture-slides.pdf) [repo](https://bitbucket.org/castacks/matlab_planning_toolbox/src/master/)    |
|     | 13:00-3:30 PM EST| <a href="#1.1"><span style="color:blue">1.1 Graph Learning</span></a>                             | [Chen](/team/chen/)        |     |
|     | 3:30-6:00 PM EST | <a href="#4.1"><span style="color:#e68200">4.1 Setup in Cloud and Cluster</span>                 | [Kat](/team/katarinac/)  |     |
|Tues. July 7| 9:00-11:30 AM EST| <a href="#2.1"><span style="color:#b50000">2.1 Visual Odometry (Traditional)</span></a>                    | [Shibo](/team/shiboz/)  |     |
|     | 12:30-3:00 PM EST| <a href="#3.2"><span style="color:green">3.2 Motion Planning (Advanced)</span></a>  | [Jay](/team/jay/) & [Brady](/team/bradym/) |    [repo](https://bitbucket.org/castacks/core_planning_tutorial/src/master/) |
|     | 3:30-6:00 PM EST | <a href="#4.2"><span style="color:#e68200">4.2 Air Lab Core Stack</span></a>                                  | [John](/team/johnk/)  |     |
|Wed. July 8  | 9:00-11:30 AM EST| <a href="#1.2"><span style="color:blue">1.2 Object Detection and Tracking</span></a>              | [Sourish](/team/sourish/) & [Anish](/team/anishb/) & [Andrew](/team/andrews/)|     |
|     | 12:30-3:00 PM EST| <a href="#2.2"><span style="color:#b50000">2.2 Visual Odometry (Learning-Based)</span></a>           | [Yafei](/team/yafeih/)  |     |
|     | 3:30-6:00 PM EST | <a href="#4.3"><span style="color:#e68200">4.3 Simulation</span></a> & <a href="#3.4"><span style="color:green">3.4 Reinforcement Learning</span></a>    | [Wenshan](/team/wenshan/) & [Rogerio](/team/rogeriob/) & [Jay](/team/jay/) & [Sourish](/team/sourish/)|     |
|Thurs. July 9| 9:00-11:30 AM EST| <a href="#1.2"><span style="color:blue">1.3 Stereo Basics and Advanced Stereo</span></a>          | [Yaoyu](/team/yaoyuh/)  |     |
|     | 12:30-3:00 PM EST| <a href="#3.3"><span style="color:green">3.3 Exploration and OpenVDB</span></a>                     | [Rohit](/team/rohitg/)  |     |
|     | 3:30-6:00 PM EST | <a href="#3.5"><span style="color:green">3.5 Formulating and Enforcing Safety</span></a>            | [Cherie](/team/cherie/) & [Mohammad](/team/mohammadrezam/)  |     |
|Fri. July 10  | 9:00-11:30 AM EST| <a href="#2.3"><span style="color:#b50000">2.3 SLAM / GTSAM</span></a>                                | [Weikun](/team/weikun/)  |     |
|     | 12:30-3:00 PM EST| <a href="#3.6"><span style="color:green">3.6 Modeling and Control</span></a>                                     | [Azarakhsh](/team/azarakhsh/)  | [repo](https://bitbucket.org/castacks/multirotor_control_tutorial) |
|     | 3:30-6:00 PM EST | <a href="#4.4"><span style="color:#e68200">4.4 Project Management</span></a>                          | [Vai](/team/vaibhavv/)  |     |

# Dependencies
Various labs will require these specifications:
* Ubuntu 18.04
* Matlab installed from CMU with all the toolboxes
* Python: Pytorch, torchvision, opencv-python, opencv-contrib-python
* ROS Melodic
* Docker


# Session Contents


### <span style="color:blue">Perception</span>
---

<a id="1.1" />
**1.1 Graph Learning**
* Graph Convolutional Networks
* Graph Sampling Methods
* Application and PyTorch Implementation

<a id="1.2" />
**1.2 Object Detection and Tracking**
* Review of object detection methods based on two flavors
    * Single-shot detectors (YOLO, SSD, etc.)
    * Region-based networks (R-CNN, R-FCN, FPN, etc.)
* Review of tracking
    * MOSSE, MedianFlow, KCF, CSRT
* On-platform tools
    * OpenVino
* Lab: Google colab session for implementation of a tiny object detector and tracker from scratch
    * Load dataset
    * Train model
    * Deploy

<a id="1.3" />
**1.3 Stereo Basics and Advanced Stereo**
* Review
  * Fundamentals of stereo vision
  * Review of introductory CV courses.
* Review stereo camera calibration. The secret for real-world testing.
  * ROS camera_calibration and OpenCV api, MATLAB.
  * Kalibr
* Public stereo dataset and benchmark.
  * Middlebury, Scene Flow, NYU, KITTI, etc
* Stereo reconstruction by OpenCV.
  * SGBM.
  * CUDA BM.
* SPS-stereo.
* Reconstruction with sparse depth heuristic.
* Confidence measure.
* Deep-learning models for stereo vision.
* Related topics
  * Multi-view stereo
  * Monocular depth. Unsupervised learning.
  * Optical flow.


### <span style="color:#b50000">State Estimation</span>
---

<a id="2.1" />
**2.1 Visual Odometry (Traditional)**
* Feature based visual odometry
  * Pose estimation method from 2D to 2D
  * Pose estimation method from 3D to 2D
  * Pose estimation method from 3D to 3D
* Direct based visual odometry
  * Optical Flow
  * Epipolar Search


<a id="2.2" />
**2.2 Visual Odometry (Learning-Based)**
* Deep Learning for feature detection and matching
* Supervised learning for visual odometry
* Self-supervised learning for monocular depth and pose estimation


<a id="2.3" />
**2.3 SLAM / GTSAM**
* Intro to factor graph
* Example to solve factor graph
* Tools for back-end SLAM: GTSAM/Ceres


### <span style="color:green">Action</span>
---

<a id="3.1" />
**3.1 Motion Planning Tutorial (Basics)**

<a id="3.2" />
**3.2 Motion Planning (Advanced)**
* Intro to using XPlane for simulation
* Informed-based algorithms (A*)
* Sampling-based planners (RRT, RRT\*, BIT*)
* OMPL overview


<a id="3.3" />
**3.3 Exploration and OpenVDB**
* Presentation:
  * Planning for exploration of a-priori unknown environments
  * vdbmap - an occupancy grid mapping pipeline that uses a specialized sparse volumetric data structure
  * Frontier based exploration and its integration with the core_autonomy stack
* Hands-On Session:
  * Setting up the workspace
  * Walk through the grid mapping pipeline
  * Playing with the grid mapping parameters for different sensor types
  * Walk through the frontier based exploration planner
  * Running and visualizing the planner in simulation


<a id="3.4" />
**3.4 Reinforcement Learning**
* Learning Visuomotor Policies for Aerial Navigation Using Cross-Modal Representations
* Learning people avoidance in simulation using DQN.


<a id="3.5" />
**3.5 Formulating and Enforcing Safety**
* Purpose: Building intuition on different safety tools and where they fail
* Where things fit in?
* Common use cases… I want to make a safety claim on my planning stack
  * AACUS - Emergency maneuver library
* Key tools
  * Reachability
  * Curse of dimensionality
* Control barrier functions
  * How does CBF makes a safety claim?
* Interactive Lab Session with ECBF
  * Single robot (with safe control and without) with fill-ins on base QP optimization
  * Multirobot
  * Problems with CBF
    * Deadlock and how to address
    * Unsolvable cases


<a id="3.6" />
**3.6 Modeling and Control**
* Modeling a multirotor (kinematics and dynamics)
* The general architecture of the control system with PX4 as an example
* PID for attitude and position controllers
* MATLAB simulation with analysis for multirotor, attitude control and position control designs (including fully-actuated multirotors)



### <span style="color:#e68200">Infrastructure</span>
---

<a id="4.1" />
**4.1 Setup in Cloud and Cluster**
* Docker
* Cluster & SLURM
* Azure
* Continuous Intergration
* Git, Ansible, Deployer



<a id="4.2" />
**4.2 Air Lab Core Stack**

<a id="4.3" />
**4.3 Simulation**
* Presentation
  * Unreal Engine and AirSim basics
    * Basic concepts
    * Installation procedure
    * Basic operations, navigate, add, move, scale, rotation etc.
  * Use AirSim w/ ROS
    * AirSim interfaces
    * AirSim ROS adapter
    * Joystick/ keyboard
  * Use AirSim on cluster w/ docker
  * Integrate AirSim with the core stack and px4
  * Use AirSim on Azure
* Lab
  * A toy example of using AirSim w/ ROS
  * People Avoidance using Reinforcement Learning
  * Learning Visuomotor Policies for Aerial Navigation Using Cross-Modal Representations
  * Integrate AirSim with PX4



<a id="4.4" />
**4.4 Project Management**
* Why project management/systems engineering
* Different methods
  * Gantt
  * Agile
  * Etc
* Tools
  * Airtable
  * Trello
