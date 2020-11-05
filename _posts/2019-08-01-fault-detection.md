---
layout: post
title:  "Real-time Fault Detection for Autonomous Aerial Vehicles"
date:   2020-07-15 10:50:07
categories: research
description: "Real-time Fault Detection for Autonomous Aerial Vehicles"
author: "Azarakhsh Keipour"
published: true
sidebar:  false
permalink: /fault-detection/
image: /img/posts/2019-08-01-fault-detection/AnomalyDetection2018.jpg
link-new-tab: true
---

The recent increase in the use of aerial vehicles raises concerns about the safety and reliability of autonomous operations. There is a growing need for methods to monitor the status of these aircraft and report any faults and anomalies to the safety pilot or to the autopilot to deal with the emergency situation. 

In this project, we developed a real-time approach to detecting anomalies in the behavior of an aircraft. Additionally, we created and published a dataset of the 47 flight sequences where the anomalies happen. Our anomaly detection method is based on the Recursive Least Squares. The approach models the relationship between correlated input-output pairs online and uses the model to detect the anomalies. The result is an easy-to-deploy anomaly detection method that does not assume a specific aircraft model and can detect many types of faults and anomalies in a wide range of autonomous aircraft. The experiments on this method show a precision of 88.23%, recall of 88.23% and 86.36% accuracy for over 22 flight tests. For more details about the work, please refer to the publications below. 

More information about the dataset is available [here](../alfa-dataset). 

{% youtube HCtGbnqjKj8 %}

### Source Code

An early version of the source code for the method written in C++ (with ROS Kinetic) can be accessed from [here](https://bitbucket.org/castacks/online_system_identification/). The code can be used with the `rosbag` files in the ALFA dataset without any modification.

### Publications

The real-time anomaly detection method for the autonomous aerial vehicles is described in the following publication (access on [arXiv](https://arxiv.org/abs/1907.00511) or [IEEE Xplore](https://ieeexplore.ieee.org/document/8794286)): 

*BibTeX:* 

```
@inproceedings{keipour:detection:2019,
author={Azarakhsh Keipour and Mohammadreza Mousaei and Sebastian Scherer},
booktitle={2019 IEEE International Conference on Robotics and Automation (ICRA)},
title={Automatic Real-time Anomaly Detection for Autonomous Aerial Vehicles},
year={2019},
month={May},
pages={5679-5685},
doi={10.1109/ICRA.2019.8794286}
} 
```

*IEEE Style:* 

```
A. Keipour, M. Mousaei, and S. Scherer, “Automatic Real-time Anomaly Detection for Autonomous Aerial Vehicles,” in 2019 IEEE International Conference on Robotics and Automation (ICRA), May 2019, pp.5679-5685. doi: 10.1109/ICRA.2019.8794286. 
```

<br/>

The dataset is described [here](../alfa-dataset) and in the following publication (access on [arXiv](https://arxiv.org/abs/1907.06268) or [The International Journal of Robotics Research website](https://doi.org/10.1177/0278364920966642)):

*BibTeX:* 

```
@article{keipour:dataset:2019,
author={Azarakhsh Keipour and Mohammadreza Mousaei and Sebastian Scherer},
title={ALFA: A Dataset for UAV Fault and Anomaly Detection},
journal = {The International Journal of Robotics Research},
volume = {0},
number = {0},
pages = {1-6},
month = {October},
year = {2020},
doi = {10.1177/0278364920966642},
URL = {https://doi.org/10.1177/0278364920966642},
eprint = {https://doi.org/10.1177/0278364920966642}
} 
```

*IEEE Style:* 

```
A. Keipour, M. Mousaei, and S. Scherer, “ALFA: A dataset for UAV fault and anomaly detection,” The International Journal of Robotics Research, vol. 0. no.  0,  pp.  1–6,  October  2020.  [Online]. Available:https://doi.org/10.1177/0278364920966642
```

<br/>

### Contact

Azarakhsh Keipour - (keipour [at] cmu [dot] edu) 

Mohammadreza Mousaei - (mmousaei [at] cmu [dot] edu) 

Sebastian Scherer - (basti [at] cmu [dot] edu) 

### Acknowledgments

This work was supported through NASA Grant Number NNX17CL06C.
