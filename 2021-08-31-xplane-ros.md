---
layout: post
title: "XPlaneROS : ROS Wrapper for Autonomous Fixed Wing Applications and Learning using Realistic Dynamics"
date: 2021-06-29 9:00:07
categories: datasets
description: "XPlaneROS : ROS Wrapper for Autonomous Fixed Wing Applications and Learning using Realistic Dynamics"
author: "Rohan Baijal"
published: true
show_sidebar: false
# slim_content_width: true
permalink: /xplane_ros/
image: /img/posts/2021-08-31-xplane-ros/scenic_view.png
datatable: true
title_image: None
hero_image: /img/posts/2021-08-31-xplane-ros/scenic_view.png
hero_height: is-large
remove_hero_title: true
menubar_toc: true
---

<!-- # XPlaneROS : ROS Wrapper for Autonomous Fixed Wing Applications and Learning using Realistic Dynamics -->


Research in Autonomous Vehicles has boomed a lot, with a huge push towards self-driving cars and autonomous robots. Another interesting use case is life-size Autonomous Fixed Wing aircraft which could be used in a number of places. Here we try to take a step in that direction by getting some architecture in place.  

As is the case with such systems, we need to be sure about the safety of models and algorithms before deploying them in the real world. There exist realistic simulators for testing driving cars (CARLA) and autonomous drones (AirSim) which make the whole process much more efficient and safe. However, for fixed-wing aircraft, the testbeds haven't quite caught on. 

Recent research work in the lab related to Imitation Learning and Social Navigation for aircraft necessitated a proper way to test these algorithms in realistic conditions. A number of realistic flight simulators exist in the market like Microsoft Flight Simulator and X-Plane but without much proper ROS integrations. We developed these tools for this very purpose. 

We chose **X-Plane 11** as our simulator since it is compatible on multiple Operating Systems and provides many realistic options for aircraft and visuals. 

<figure>
 <img src="/img/posts/2021-08-31-xplane-ros/front_view.png" style="width:41%" />
  <img src="/img/posts/2021-08-31-xplane-ros/side_view.png" style="width:41%" />
 <figcaption>
Figure caption here.
 </figcaption>
</figure>

<!-- <img src="/img/posts/2021-08-31-xplane-ros/front_view.png" alt="architecture"
	title="architectur" height="auto" width="50%" />  
<!-- ![Front View](images/front_view.png)  -->

<!-- <img src="/img/posts/2021-08-31-xplane-ros/side_view.png" alt="architecture"
	title="architectur" height="auto" width="50%" />  --> 

<!-- ![Side View](images/side_view.png) -->

## XPlaneROS Overview

**XPlaneROS** is the ROS wrapper which interfaces with the simulator using NASA's XPlaneConnect. Once this is running, the user doesn't need to worry about getting into the workings and can simply take up the useful information from existing messages published over ROS topics.

<!-- <img src="images/xplane_ros_arch.png" alt="architecture"
	title="architectur" />  -->
<figure>
 <img src="/img/posts/2021-08-31-xplane-ros/xplane_ros_arch.png" alt="Planning" style="width:70%"/>
 <figcaption>
Figure caption here
 </figcaption>
</figure>
<!-- ![XPlaneROS Arch](images/xplane_ros_arch.png) -->

In addition, we decided to integrate **ROSPlane** with **XPlaneROS** for the controllers. A whole traffic-pattern following was run using the path following algorithms and PID controllers. There have been some extensions to ROSPlane like employing a proper takeoff, additional control loops for vertical velocity rates and a rudimentary landing sequence. 

<!-- [![Autonomous Takeoff with XPlaneROS](https://img.youtube.com/vi/StTqXEQ2l-Y/0.jpg)](https://www.youtube.com/watch?v=UGCb0Ccn-VI&list=PLeWqkg3BNnzHeSgbRMOHzG30cd8xPP357&index=1 "Autonomous Takeoff with XplaneROS") -->

{% youtube UGCb0Ccn-VI %}

## Repository Access
The repository for XPlaneRos can be found [here](https://bitbucket.org/castacks/xplane_ros/src/master/). The accompanying README gives details on how to setup and run the codebase. 

## Controller Tuning Tools

Tuning the controllers can also be challenging and slow. To tackle this, a simple GUI utility is available via which users can give specific commands for roll, pitch etc and can tune the PID paramters based on the performance.   

<!-- <img src="images/plot_plus_rviz.png" alt="architecture"
	title="architectur" />  -->

<figure>
 <img src="/img/posts/2021-08-31-xplane-ros/plot_plus_rviz.png" alt="Planning" style="width:70%"/>
 <figcaption>
Figure caption here
 </figcaption>
</figure>

<!-- ![Front View](images/plot_plus_rviz.png) -->

<!-- [![Everything Is AWESOME](https://img.youtube.com/vi/StTqXEQ2l-Y/0.jpg)](https://www.youtube.com/watch?v=eqchNXix52A&list=PLeWqkg3BNnzHeSgbRMOHzG30cd8xPP357&index=2 "Everything Is AWESOME") -->


## Tutorial
The following video gives a tutorial on how to implement pattern following with XPlaneROS.
{% youtube eqchNXix52A %}

## Future Work

There are efforts underway to use this system along with a Behaviour Cloning framework and a native Trajectory Library. We hope this tool also becomes useful to other researchers out there wanting to try out Learning-based approaches for autonomous aircraft. The ROS integration is an added benefit which allows people to go beyond only Learning and use the trained algorithms within a whole system.


## Term of use
License Here

<!-- <a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>. -->
