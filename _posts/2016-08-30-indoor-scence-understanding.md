---
layout: post
title:  "Real-time 3D Scene Layout from Images"
date:   2016-11-01 10:50:07
categories: research
description: "Understanding the 3D scene layout from images and combine it with SLAM"
author: "Sanjiban Choudhury"
image: /img/posts/2016-08-20-indoor/screen.png
published: true
sidebar:  false
---

In this project, we study the problem of understanding the 3D scene layout from images and combine it with traditional simultaneous localization and mapping (SLAM) to improve robot navigation ability in some challenging environments especially low-texture areas.


 <h2 class="overview" style="text-align: center;"><strong>One Image</strong></h2>
 <hr>




**Reference**: Yang, S., Maturana, D. and Scherer, S., Real-time 3D Scene Layout from a Single Image Using Convolutional Neural Networks., International Conference on Robotics and automation (ICRA), 2016 <strong> </strong><span style="font-size: 16px; line-height: 1.5;">[<span style="color: #339966;"><a style="color: #339966;" href="http://www.frc.ri.cmu.edu/~syang/Publications/icra_2016.pdf">Paper</a></span>][<span style="color: #339966;"><a style="color: #339966;" href="http://www.frc.ri.cmu.edu/~syang/Publications/pop_icra_16.bib">Bib</a></span>]

**Contacts**: Shichao Yang {shichaoy@andrew.cmu.edu}

**Abstract**:
We consider the problem of understanding the 3D layout of indoor corridor scenes from a single image in real time. Identifying obstacles such as walls is essential for robot navigation, but also challenging due to the diversity in structure, appearance and illumination of real-world corridor scenes. Many current single-image methods make Manhattan-world assumptions, and break down in environments that do not meet this mold. They also may require complicated hand-designed features for image segmentation or clear boundaries to form certain building models. In addition, most cannot run in real time. In this paper, we propose to combine machine learning with geometric modelling to build a simplified 3D model from a single image. We first employ a supervised Convolutional Neural Network (CNN) to provide a dense, but coarse, geometric class labelling of the scene. We then refine this labelling with a fully connected Conditional Random Field (CRF). Finally, we fit line segments along wall-ground boundaries and <q>pop up</q> a 3D model using geometric constraints. We assemble a dataset of 967 labelled corridor images. Our experiments on this dataset and another publicly available dataset show our method outperforms other single image scene understanding methods in pixelwise accuracy while labelling images at over 15Hz.     

<center><img class="wp-image-3999 aligncenter" src="/img/posts/2016-08-20-indoor/method_overview_2.png" alt="method_overview_2" width="451" height="351" /></center>

{% youtube 2CvFHy5jk1c %}

## Dataset

 We assemble an image dataset (967 images) for corridor environments. All the images are annotated as ground or wall using polygons. More details and downloads could be found at <strong><span style="color: #008080;"><a style="color: #008080;" href="http://theairlab.org/cmu-corridor-dataset/">http://theairlab.org/cmu-corridor-dataset/</a></span></strong>. &nbsp;

 <h2 class="overview" style="text-align: center;"><strong>Multiple Images</strong></h2>
 <hr>
 **Reference**: Yang, S., Song, Y., Kaess, M., &amp; Scherer, S. Pop-up SLAM: a Semantic Monocular Plane SLAM for Low-texture Environments. International Conference on Intelligent Robots and Systems (IROS), 2016  <span style="font-size: 16px; line-height: 1.5;">[<span style="color: #339966;"><a style="color: #339966;" href="http://www.frc.ri.cmu.edu/~syang/Publications/iros_2016.pdf">Paper</a></span>][<span style="color: #339966;"><a style="color: #339966;" href="http://www.frc.ri.cmu.edu/~syang/Publications/pop_iros_16.bib">Bib</a></span>]</span>

 **Abstract**: Existing simultaneous localization and mapping (SLAM) algorithms are not robust in challenging low-texture environments because there are only few salient features. The resulting sparse or semi-dense map also conveys little information for motion planning. Though some work utilize plane or scene layout for dense map regularization, they require decent state estimation from other sources. In this paper, we propose real-time monocular plane SLAM to demonstrate that scene understanding could improve both state estimation and dense mapping especially in low-texture environments. The plane measurements come from a pop-up 3D plane model applied to each single image. We also combine planes with point based SLAM to improve robustness. On a public TUM dataset, our algorithm generates a dense semantic 3D model with pixel depth error of 6.2 cm while existing SLAM algorithms fail. On a 60 m long dataset with loops, our method creates a much better 3D model with state estimation error of 0.67%.

<center><img class="wp-image-3999 aligncenter" src="/img/posts/2016-08-20-indoor/method_overview_3.png" alt="method_overview_2" width="451" height="351" /></center>

{% youtube TOSOWdxmtkw %}
