---
layout: post
title:  "Unsupervised Online Learning for Visual Interestingness"
date:   2020-05-01 10:50:07
categories: research
description: "Visual Interestingness"
author: "Chen Wang"
published: true
sidebar:  false
permalink: /interestingness/
image: /img/posts/2020-05-01-interestingness/cover.png
---


<hr>
The problem of visual interestingness detection, which is crucial for many practical applications such as search and rescue, is explored in this project. Although prior research is able to detect significant objects or scenes, it is not able to adapt in real-time and loose interest over time after repeatedly observing the same objects or exploring the same scenes. To enable such behaviours for robots, we argue that a learning system should have both life-time human-like experience learned from a large amount of unlabeled data and a short-term learning capability for limited negative labeled data. This is because robots normally only know uninteresting objects before a mission and have to change their interests during a mission. To this end, we introduce an unsupervised learning model with a memory mechanism, which is able to train in real-time without back-propagation, resulting in a much faster learning speed. Our experiments show that, although implemented on a single machine, our approach is still able to learn online and find meaningful objects for a practical search task in mine tunnels. 

{% youtube PXIcm17fEko %}

### Approaches
We propose to establish an **online learning** scheme to search for interesting scenes for robot exploration. On the other hand, existing algorithms are heavily dependent on back-propagation algorithm for learning, which is very computationally expensive. To solve this problem, we introduce a novel translation-invariant 4-D visual memory to identify and recall visually interesting scenes. Human beings have a great capacity to direct visual attention and judge the interestingness of a scene.

For mobile robots, we find the following properties are necessary to establish a sense of visual interestingness:

* **Unsupervised**: Visual interestingness is a psychological process. Its definition is subjective and can change according to one’s experience and environments, thus labels are difficult to obtain. However, prior research mainly focuses on supervised methods, and their performance suffers in a prior unseen environment. We hypothesize that a sense of interestingness can be established for autonomous robots in an unsupervised manner.

* **Task-dependent**: In many tasks, we might only know uninteresting objects before the task is started. For example, in a mine rescue search task, the deployment will be more efficient and easier, if the robots can be taught what is not interesting in the specific scene within several minutes. In this sense, we argue that a visual interestingness detection system should be able to learn negative labeled samples quickly, thus an incremental learning method is necessary. Note that we expect the model is capable of learning negative samples, but it is not necessary in all tasks.             

Therefore, to construct a practical interestingness detection system and achieve the above properties, we introduce an unsupervised online learning model with a novel memory mechanism and expect the following outcomes:        

* **Long-term learning**: In this stage, we expect a model to be trained off-line on a large amount of data in an unsupervised manner as human beings acquire common knowledge from experience. We also expect the training time on a single machine to be no more than the order of days.

* **Short-term learning**: For task-dependent knowledge, the model then should be able to learn from hundreds of uninteresting images in minutes. This can be done before a mission starts and is beneficial to quick robot deployment.

* **Online learning**: During mission execution the system should express the top interests in real-time and the detected interests should be lost online when they appear frequently, regardless if they exist in the uninteresting images or not. Another important aspect for online learning is no data leakage, i.e., each frame is proceeding without using information from its subsequent frames.
<figure>
 <img src="/img/posts/2020-05-01-interestingness/image3crop.png" alt="interesting images" />
 <figcaption>
    Detected interesting scenes 
 </figcaption>
</figure>

### Key Results
In the [DARPA Subterranean (SubT) Challenge](https://www.darpa.mil/program/darpa-subterranean-challenge), each team deploys multiple robots into several mine tunnels (GPS and wireless communication denied) to search for objects. The tunnels have a cumulative linear distance in the range of 4-8 km. The [SubT front camera (SubTF) dataset](http://theairlab.org/dataset/interestingness) contains seven long videos (1h) recorded by two fully autonomous unmanned ground vehicles (UGV) during their complete exploration in two tunnels during the tunnel circuit. Some of the video shots are presented in Figure 1. It can be seen that the SubTF dataset is very challenging, as the human annotation varies a lot, i.e. only 3.6% of the frames are labeled as interesting by at least 2 subjects, although 15% of the frames are labeled by at least 1 subject (Interest-1). 

<figure>
 <img src="/img/posts/2020-05-01-interestingness/image2.png" alt="interestingness score" />
 <figcaption>
    Fig. 1. This figure shows several examples of both uninteresting and interesting scenes in <a href="http://theairlab.org/dataset/interestingness">SubTF dataset</a> taken by the Team Explorer who won the first place in DARPA SubT Challenge tunnel circuit. The height of green strip located at the right of each image indicates the interestingness level predicted by our unsupervised online learning algorithm when it sees the scene for the first time.
 </figcaption>
</figure>

Compared to human indicated interestingness the algorithm achieves an average 20% higher accuracy than the approach without online learning. The results indicate that our three-stage architecture of long-term, short-term, and online learning shows promise in representing interestingness for robots. 




<figure>
 <img src="/img/posts/2020-05-01-interestingness/image1.png" alt="map" style="width:70%" />
 <figcaption>
    The map created by Lidar during fully autonomous exploration
 </figcaption>
</figure>





### Project Members
* [Chen Wang](https://chenwang.site)
* [Wenshan Wang](http://www.wangwenshan.com/)
* Yuheng Qiu
* Yafei Hu
* Sebastian Scherer

### Publication

* Chen Wang, Wenshan Wang, Yuheng Qiu, Yafei Hu, Sebastian Scherer, "Visual Memorability for Robotic Interestingness Prediction via Unsupervised Online Learning". European Conference on Computer Vision (ECCV), 2020 [[PDF](https://arxiv.org/abs/2005.08829)]

### Source Codes

   * Plain Python Package: [interestingness](https://github.com/wang-chen/interestingness)

   * ROS Package: [interestingness_ros](https://github.com/wang-chen/interestingness_ros)


### Citation

      @inproceedings{wang2020visual,
         title={Visual Memorability for Robotic Interestingness via Unsupervised Online Learning},
         author={Wang, Chen and Wang, Wenshan and Qiu, Yuheng and Hu, Yafei and Scherer, Sebastian},
         booktitle={European Conference on Computer Vision (ECCV)},
         year={2020},
      }
