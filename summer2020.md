---
layout: page
title: Air Lab Summer School
subtitle: 6-10 July 2020
show_sidebar: false
hide_footer: false
hero_image: /img/tartan2.png
---
<!-- hero_image: /img/posts/2020-02-29-tartanair/environments.png -->
# General Information
The goal of this boot camp is to get each student started with the basics, broaden their horizon beyond their own research topic, understand the tradeoffs of different approaches in our context (real-time, flying robots, etc.) and make our students more “dangerous” with some code/tools that they can use to jump start their research. 

Each session will consist of a 1 hour lecture followed by a 1.5 hour lab. 

There will be multiples sessions on the topics of <span style="color:blue">Perception</span>, <span style="color:#b50000">State Estimation</span>, <span style="color:green">Action</span>, and <span style="color:#e68200">Infrastructure</span>.

Click on the session in the schedule to jump to the session overview.

<!-- Add instructions for how streaming will work-->


# Schedule

|Day  |Time   | Session |Host   |Links   |
|---|---|---|---|---|
|Mon  | 9:00-11:30 AM EST| <span style="color:green">3.1 Motion planning tutorial basics</span>            | [Basti](/team/sebastian/)  | [lecture]() \| [slides]() \| [repo]()  |
|     | 12:30-3:00 PM EST| <a href="#1.1"><span style="color:blue">1.1 Graph Learning</span></a>                             | [Chen](/team/chen/)        | [lecture]() \| [slides]() \| [repo]()  |
|     | 3:30-6:00 PM EST | <span style="color:#e68200">4.1 Setup in cloud and cluster</span>                 | [Kat](/team/katarinac/)  |  [lecture]() \| [slides]() \| [repo]() |
|Tues | 9:00-11:30 AM EST| <span style="color:#b50000">2.1 Visual Odometry (Basic)</span>                    | [Shibo](/team/shiboz/)  | [lecture]() \| [slides]() \| [repo]()  |
|     | 12:30-3:00 PM EST| <span style="color:green">3.2 Motion planning and exploration (Advanced)</span> | [Jay](/team/jay/) & [Brady](/team/bradym/) |  [lecture]() \| [slides]() \| [repo]() |
|     | 3:30-6:00 PM EST | <span style="color:#e68200">4.2 Core stack</span>                                 | [John](/team/johnk/)  |  [lecture]() \| [slides]() \| [repo]() |
|Wed  | 9:00-11:30 AM EST| <a href="#1.2"><span style="color:blue">1.2 Object Detection and Tracking</span></a>              | [Sourish](/team/sourish/) & [Anish](/team/anishb/) & [Andrew](/team/andrews/)| [lecture]() \| [slides]() \| [repo]()  |
|     | 12:30-3:00 PM EST| <span style="color:#b50000">2.2 Visual odometry (learning-based)</span>           | [Yafei](/team/yafeih/)  |  [lecture]() \| [slides]() \| [repo]() |
|     | 3:30-6:00 PM EST | <span style="color:#e68200">4.3 Simulation & 3.3 Reinforcement learning</span>    | [Wenshan](/team/wenshan/) & [Rogerio](/team/rogeriob/) & [Jay](/team/jay/) & [Sourish](/team/sourish/)|  [lecture]() \| [slides]() \| [repo]() |
|Thurs| 9:00-11:30 AM EST| <span style="color:blue">1.3 Stereo Basics and Advanded Stereo</span>          | [Yaoyu](/team/yaoyuh/)  | [lecture]() \| [slides]() \| [repo]()  |
|     | 12:30-3:00 PM EST| <span style="color:green">3.3 Exploration and OpenVDB</span>                    | [Rohit](/team/rohitg/)  |  [lecture]() \| [slides]() \| [repo]() |
|     | 3:30-6:00 PM EST | <span style="color:green">3.5 Formulating and Enforcing Safety</span>           | [Cherie](/team/cherie/) & [Mohammad](/team/mohammadrezam/)  |  [lecture]() \| [slides]() \| [repo]() |
|Fri  | 9:00-11:30 AM EST| <span style="color:#b50000">2.3 SLAM / GTSAM</span>                               | [Weikun](/team/weikun/)  | [lecture]() \| [slides]() \| [repo]()  |
|     | 12:30-3:00 PM EST| <span style="color:green">3.6 Control</span>                                    | [Azarakhsh](/team/azarakshs/)  |  [lecture]() \| [slides]() \| [repo]() |
|     | 3:30-6:00 PM EST | <span style="color:#e68200">4.4 Project management</span>                         | [Vai](/team/vaibhavv/)  |  [lecture]() \| [slides]() \| [repo]() |

# Dependencies
Various labs will require these specifications:
* Ubuntu 18.04
* Matlab installed from CMU with all the toolboxes
* Python: Pytorch, torchvision, opencv-python, opencv-contrib-python
* ROS Melodic
* Docker 


# Session Contents


### <span style="color:blue">Perception</span>
<hr>

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

### <span style="color:#b50000">State Estimation</span>
<hr>

### <span style="color:green">Action</span>
<hr>

### <span style="color:#e68200">Infrastructure</span>
<hr>




