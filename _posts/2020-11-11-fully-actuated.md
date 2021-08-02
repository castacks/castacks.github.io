---
layout: post
title: "Fully-Actuated UAVs: Control, Analysis and Applications"
date: 2021-03-10 10:50:07
categories: research
description: "Control, Analysis and Applications of Fully-Actuated UAVs"
author: "Azarakhsh Keipour"
published: true
sidebar: false
permalink: /fully-actuated/
image: /img/posts/2020-11-11-fully-actuated/fully-actuated.jpg
link-new-tab: true
---

The introduction of fully-actuated multirotors has opened the door to new possibilities and more efficient solutions to many real-world applications. However, their integration had been slower than expected, partly due to the need for new tools to take full advantage of these robots. In our research we aim to come up with innovative ideas to accelerate the integration of these new flying robots into the real world and push the boundaries of technology to develop new applications that have previously deemed impossible.

As far as we know, all the groups currently working on the fully-actuated multirotors develop new full-pose (6-D) tools and methods to use their robots, which is inefficient, time-consuming, and requires many resources. As the first step towards our goal, we have proposed a way of bridging the gap between the tools already available for underactuated robots and the new fully-actuated vehicles. The approach can extend the existing underactuated flight controllers to support the fully-actuated robots, or enhance the existing fully-actuated controllers to support existing underactuated flight stacks. We have introduced attitude strategies that work with the underactuated controllers, tools, planners and remote control interfaces, all while allowing taking advantage of the full actuation. Moreover, new methods are proposed that can properly handle the limited lateral thrust suffered by many fully-actuated UAV designs. The strategies are lightweight, simple, and allow rapid integration of the available tools with these new vehicles for the fast development of new real-world applications. 

The following video is from the paper submitted to IROS 2021 (under review) that shows the general idea of the new controller design.

{% youtube lZ3ye1il0W0 %}

The real experiments on our robots and simulations on several UAV architectures with different underlying controller methods show how these strategies can be utilized to extend existing flight controllers for fully-actuated applications. We have provided the source code for the PX4 firmware enhanced with our proposed methods to showcase an example flight controller for underactuated multirotors that can be modified to seamlessly support fully-actuated vehicles while retaining the rest of the flight stack unchanged. 

Furthermore, we have been analyzing the properties and abilities of the fully-actuated multirotors and their controllers. For this purpose we have implemented a new simulator that can be used to improve the architectural designs, implement new control ideas and determine the extent that each design and controller can be used for differen tasks. The following video shows the simulator for a motion/force control task of drawing on the wall.

{% youtube 7RNiUFTMjks %}

The source code for the simulator will be shared in the coming months. 

### Education

In summer 2020, the AirLab held an [online summer shcool](http://theairlab.org/summer2020). In the control and modeling section we used the basic version of our simulator for hands-on exercises. The session includes a quick overview of control and modeling for people who are already familiar with UAVs but have never learned the UAV control. It further extends into fully-actuated robots and also includes exercises on the fixed-tilt fully-actuated robots. You can access the source code, the recorded presentation and the slides from [here](http://theairlab.org/summer2020/#3.6).

### Source Code

The source code for the PX4 autopilot modified to work with fully-actuated robots and enhanced with our thrust and attitude strategies can be found [here](https://github.com/castacks/PX4-fully-actuated). Note that the code has been published with our paper (under review). For the correct citation, please see the Publications section below.

### Publications

The general ideas on how to simplify the integration of fully-actuated UAVs into real-world applications and how to allow their interaction with the already-available tools, along with the sets of attitude and thrust strategies are described in the following publication (access on [arXiv](https://arxiv.org/abs/2011.06666)): 

*BibTeX:* 

```
@article{keipour:fa:2021,
author={Azarakhsh Keipour and Mohammadreza Mousaei and Andrew Ashley and Sebastian Scherer},
booktitle={arXiv},
title={Integration of Fully-Actuated Multirotors into Real-World Applications}, 
year={in press},
pages={1-8},
link={https://arxiv.org/abs/2011.06666},
}
```

*IEEE Style:* 

```
A. Keipour, M. Mousaei, A. Ashley, and S. Scherer, “Integration of Fully-Actuated Multirotors into Real-World Applications,”, Under review. 
```

<br/>

### Contact

Azarakhsh Keipour - (keipour [at] cmu [dot] edu) 

Sebastian Scherer - (basti [at] cmu [dot] edu) 

### Acknowledgments

This work was supported through NASA Grant Number 80NSSC19C010401.
