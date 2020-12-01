---
layout: post
title: "Robotic Interestingness: A Dataset to Push the Limits of Online Visual Interesting Scene Prediction"
date: 2019 Nov
categories: datasets
description: "Interestingness"
author: Chen Wang
published: true
sidebar: false
permalink: /dataset/interestingness
image: /img/posts/2020-03-01-interestingness-data/map.png
datatable: true
link-new-tab: true
---

Visual interesting scene prediction for mobile robots is one of the most fundamental research area in robotic. It is crucial for many robotic applications, such as robot exploration, decision making, and robot coorpertation, etc. Therefore, it is important to establish a sense of "visual interestingness" like humans for mobile robots. To promote the development visual interesting scene prediction for such purpose, we create this dataset for robots to better sense the world.

## Why this data important?

This data is recorded in the famous DARPA Challenge 2018-2021, Tunnel Circuit, i.e. the Subterranean (SubT) Challenge.
It is a prize competition funded by the US Defense Advanced Research Projects Agency.
The past DARPA challenges have enabled many state-of-the-arts technologies, including the autonomous driving.
In this challenge, the teams must deploy robotic systems which search and explore subterranean environments.
Since the environments are fully GPS and wireless communication denied, the robots has to do self-localization, pathing planning, exploration, etc., fully autonomously.
We release this data to help the robotists establish a sense of "visual interestingness" for real robots.

In general, the robots has to learn online, detect the 'interesting' scenes, and lose interests on repetitive scenes.


## Who record this data?

The data is recorded by the [Team Explorer](https://www.subt-explorer.com), who won the first place at the DARPA Subterranean Challenge Tunnel Circuit.
This team was lead by [Sebastian Scherer](http://theairlab.org/team/sebastian/), an associate research professor in the [Robotics Institute](https://www.ri.cmu.edu),[Carnegie Mellon University](https://www.cmu.edu/). [Sebastian Scherer](http://theairlab.org/team/sebastian/) is also the director of the [AirLab](http://theairlab.org) in CMU.

## About DARPA Subterranean Challenge ##
The [DARPA Subterranean Challenge](https://www.subtchallenge.com/) tasks teams, consisting of university and corporate entities from around the world, to build robotic systems which autonomously search and explore subterranean environments. These environments pose significant challenges to competitors, including a lack of lighting, lack of GPS capabilities, dripping water, thick smoke, and cluttered or irregularly shaped environments. The challenge started in September 2018 and consists of a Systems Track (in which teams compete with physical robots) and a Virtual Track (in which teams compete in the ROS Gazebo virtual simulator). The competition is split into four phases, each capped with a scored challenge event: the Tunnel Circuit (August 2019), which featured an experimental mine in Pittsburgh, PA; the Urban Circuit (February 2020), which features an abandoned nuclear power plant in Seattle, WA; the Cave Circuit (August 2020); and the Final Circuit (August 2021), which will feature elements from previous circuits. On August 2021, DARPA will award a $2 million prize to the winner of the Systems Track and $1.5 million to the winner of the Virtual Track.

## Data details
Each of the tunnels has a cumulative linear distance of 4-8km.
The SubT front camera (SubTF) dataset listed in the following table, contains seven long videos (1 hour) recorded by two fully autonomous unmanned ground vehicles (UGV).
For better evaluation, we asked multiple volunteers to label the interesting scenes at every 2 seconds so that each sequence is evaluated by at least 3 participants.
It can be seen that SubTF dataset is very challenging, as the human annotation varies a lot, i.e., only 15% and 3.6% of the frames are labeled as interesting by at least 1 (Normal) and 2 subjects (Difficult), respectively.

| Video    |   Length  |     Normal   |  Difficult  |
|----------|:---------:|-------------:| -----------:|
|    1     |  53.1 min |   11.11%     |    2.76%    |
|    2     |  55.7 min |   15.07%     |    4.49%    |
|    3     |  79.4 min |    9.37%     |    3.02%    |
|    4     |  80.0 min |   17.51%     |    4.29%    |
|    5     |  59.0 min |   24.52%     |    4.07%    |
|    6     |  57.5 min |   22.77%     |    3.30%    |
|    7     |  83.0 min |   11.04%     |    3.21%    |
| overall  | 467.7 min |    15.49%    |    3.58%    |
|----------|:---------:|-------------:| -----------:|

An important aspect is that the volunteers are expect to only label the first frame, if a continuous frames containing the same scene are interesting.
This means that we expect our robot to report only once, when a interesting scene is found.

Features of this data:
- Large scale and Challenging Scenes
    - 4-8 km mine tunnels
    - Dripping water, thick smoke, and cluttered or irregularly shaped environments.
- Fully autonomous ground vehicles (AGV).
    - Challenging but practical


<figure>
 <img src="/img/posts/2020-03-01-interestingness-data/map.png" alt="Map" />
 <figcaption>
    One of tunnel maps created by lidar.
 </figcaption>
</figure>


<figure>
 <img src="/img/posts/2020-03-01-interestingness-data/uninteresting.png" alt="uninteresting" />
 <figcaption>
    Some uninteresting scenes.
 </figcaption>
</figure>



<figure>
 <img src="/img/posts/2020-03-01-interestingness-data/sample.png" alt="uninteresting" />
 <figcaption>
    Some interesting scenes.
 </figcaption>
</figure>


### Download

 - Processed Images: [Link](https://entuedu-my.sharepoint.com/:f:/g/personal/cwang017_e_ntu_edu_sg/Evz3OmdaXxtLsbZfwz119jwB0QFmo4huww22dqWUkcw0ng?e=bwC8EF)
 - ROS Bags: [Link](https://entuedu-my.sharepoint.com/:f:/g/personal/cwang017_e_ntu_edu_sg/ErrOwe_Y3MdEq_2Y6xVeiBoBMnclhpUd1V-0F1GnxxgFcQ?e=Vom0M2)

### Evaluation Tools

Go to the [GitHub Repo](https://github.com/wang-chen/SubT).

### Maintenance

[Chen Wang](https://chenwang.site) (chenwang[at]dr[dot]com; chenwan3[at]cs[dot]cmu[dot]edu) 

[Sebastian Scherer](http://theairlab.org/team/sebastian/) (basti [at] cmu [dot] edu)


### Citation

      @inproceedings{wang2020visual,
         title={Visual Memorability for Robotic Interestingness via Unsupervised Online Learning},
         author={Wang, Chen and Wang, Wenshan and Qiu, Yuheng and Hu, Yafei and Scherer, Sebastian},
         booktitle={European Conference on Computer Vision (ECCV)},
         year={2020},
      }

Download [this paper](https://arxiv.org/pdf/2005.08829.pdf).

### Acknowledgments 

The human subject survey was approved under #2019_00000522.