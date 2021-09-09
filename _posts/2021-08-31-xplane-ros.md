---
layout: post
title: "XPlaneROS : ROS Wrapper for Autonomous Fixed Wing Applications"
date: 2021-09-03 2:00:07
categories: research
description: "A ROS wrapper for the XPlane-11 flight simulator"
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

Today, manned and unmanned vehicles are separated, limiting the utility and flexibility of
operations and reducing efficiency. One area that is particularly challenging for autonomous
aircraft are airport/heliport operations where conflicts between aircraft are common and
need to be resolved. Mastering visual flight rules (VFR) operations for autonomous
aircraft has significant operational advantages at unimproved sites, as well as in achievable
traffic density compared to instrument flight rules (IFR) or completely separated operations
between manned and unmanned systems.


As is the case with such systems, we need the ability to verify the safety of the algorithms before deploying them in the real world. There exist realistic simulators for testing driving cars (CARLA) and autonomous drones (AirSim) which makes testing and deployment more efficient and safe. A number of high-fidelity flight simulators exist, such as Microsoft Flight Simulator and X-Plane, but natively do not integrate with traditional deep learning and robotics pipelines.

In this work we present **XPlaneROS** that integrate a high-fidelity simulator with a state-of-the-art autopilot. The complete system enables the use of high-level or lower-level commands to control a general aviation aircraft in realistic world scenarios anywhere in the world. We chose **X-Plane 11** as our simulator because of its open API and realistic aircraft models and visuals. For the lower-level control, we've integrated **ROSplane** as the autopilot. [ROSplane](https://github.com/byu-magicc/rosplane) is control stack for fixed-wing aircraft developed by the [BYU MAGICC Lab](https://magicc.byu.edu/).

<figure>
 <img src="/img/posts/2021-08-31-xplane-ros/front_view.png" style="width:49%" />
  <img src="/img/posts/2021-08-31-xplane-ros/side_view.png" style="width:49%" />
 <figcaption>
XPlaneROS integrates XPlane 11 with ROSplane to enable higher-level autonomy in general aviation.
 </figcaption>
</figure>

<!-- <img src="/img/posts/2021-08-31-xplane-ros/front_view.png" alt="architecture"
	title="architectur" height="auto" width="50%" />  
<!-- ![Front View](images/front_view.png)  -->

<!-- <img src="/img/posts/2021-08-31-xplane-ros/side_view.png" alt="architecture"
	title="architectur" height="auto" width="50%" />  -->

<!-- ![Side View](images/side_view.png) -->

## XPlaneROS Overview

**XPlaneROS** interfaces with XPlane 11 using NASA's [XPlaneConnect](https://github.com/nasa/XPlaneConnect). With XPlaneROS, the information from XPlane is published over ROS topics. The ROSplane integration then uses this information to generate actuator commands for ailerons, rudder, elevator, and throttle based on higher-level input to the system. These actuator commands are then sent to XPlane through XPlaneConnect.

<!-- <img src="images/xplane_ros_arch.png" alt="architecture"
	title="architectur" />  -->
<figure>
 <img src="/img/posts/2021-08-31-xplane-ros/xplane_ros_arch.png" alt="Planning" style="width:99%"/>
 <figcaption>
A pictorial overview of the XPlaneROS.
 </figcaption>
</figure>
<!-- ![XPlaneROS Arch](images/xplane_ros_arch.png) -->

ROSplane uses a cascaded control structure and has the ability to follow waypoints with Dubin's Paths. XPlaneROS provides additional capabilities to follow a select set of motion primitives. There have also been some extensions to ROSplane like employing a proper takeoff, additional control loops for vertical velocity rates and a rudimentary autonomous landing sequence.

The video below shows an aircraft taking off from a general aviation airport.


<!-- [![Autonomous Takeoff with XPlaneROS](https://img.youtube.com/vi/StTqXEQ2l-Y/0.jpg)](https://www.youtube.com/watch?v=UGCb0Ccn-VI&list=PLeWqkg3BNnzHeSgbRMOHzG30cd8xPP357&index=1 "Autonomous Takeoff with XplaneROS") -->

{% youtube UGCb0Ccn-VI %}

## Repository Access
The repository for XPlaneROS can be found [here](https://github.com/castacks/xplane_ros). The accompanying README gives details on how to setup and run the codebase.

## Controller Tuning Tools

Tuning the controllers can also be challenging and slow. To tackle this, a simple GUI utility is available via which users can give specific commands for roll, pitch etc and can tune the PID parameters based on the performance.   

<!-- <img src="images/plot_plus_rviz.png" alt="architecture"
	title="architectur" />  -->

<figure>
 <img src="/img/posts/2021-08-31-xplane-ros/plot_plus_rviz.png" alt="Planning" style="width:70%"/>
 <figcaption>
rqt_plot visualizes the commanded values and the real values. The rqt_reconfigure behaves as the GUI for ease of giving commands and tuning
 </figcaption>
</figure>

<!-- ![Front View](images/plot_plus_rviz.png) -->

<!-- [![Everything Is AWESOME](https://img.youtube.com/vi/StTqXEQ2l-Y/0.jpg)](https://www.youtube.com/watch?v=eqchNXix52A&list=PLeWqkg3BNnzHeSgbRMOHzG30cd8xPP357&index=2 "Everything Is AWESOME") -->


## Tutorial
The following video gives a tutorial on how to implement pattern following with XPlaneROS.
{% youtube eqchNXix52A %}

## Future Work

We hope this tool enables research in higher-level autonomy for general aviation aircraft. Extensions to this work include integrating real-world traffic data to enable social navigation and coordination, as well as testing vision-based detect and avoid systems. Extensions might also include adding language as a modality for safe navigation within the national airspace.

<!-- becomes useful to other researchers wanting to implement learning-based approaches for autonomous aircraft. The ROS integration is an added benefit which allows people to go beyond only Learning and use the trained algorithms within a whole system. -->

## Additional Info

### Citation
```
@misc{baijal_patrikar_moon_scherer_oh_2021,
  title={XPlaneROS : ROS Wrapper for Autonomous Fixed Wing Applications},
  url={https://kilthub.cmu.edu/articles/software/XPlaneROS_ROS_Wrapper_for_Autonomous_Fixed_Wing_Applications/16589924},  publisher={Carnegie Mellon University},
  author={Baijal, Rohan and Patrikar, Jay and Moon, Brady and Scherer, Sebastian and Oh, Jean},
  year={2021},
  month={Sep},
  DOI={10.1184/R1/16589924}
}
```


### Contributors
* Rohan Baijal (Maintainer): [Email](rbaijal@iitk.ac.in)

* [Jay Patrikar](https://theairlab.org/team/jay/) (Maintainer)

* [Brady Moon](https://theairlab.org/team/bradym/)

* [Dr. Sebastian Scherer](https://theairlab.org/team/sebastian/)

* [Dr. Jean Oh](https://www.cs.cmu.edu/~./jeanoh/)

### Term of use
[BSD 4-Clause License](https://choosealicense.com/licenses/bsd-4-clause/)

<!-- <a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>. -->
