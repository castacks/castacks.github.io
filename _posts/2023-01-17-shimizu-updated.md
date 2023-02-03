---
layout: post
title: "Autonomous UAV-based Multi-Model High-Resolution Reconstruction for Aging Bridge Inspection (new)"
date: 2023-01-17 18:58:00
categories: research
description: "What challenges to build accurate dense 3D models for bridges?"
author: "Yaoyu Hu"
published: true
show_sidebar: false
# slim_content_width: true
permalink: /shimizu/
image: /img/posts/2023-01-17-shimizu-updated/thumbnail_sfm.jpg
datatable: true
title_image: None
hero_image: /img/posts/2023-01-17-shimizu-updated/hero.jpg
hero_height: is-large
remove_hero_title: true
menubar_toc: true
link-new-tab: true
---

During a 4-year research collaboration with an international corporation in civil engineering ([Shimizu Institute of Technology](https://www.shimz.co.jp/en/company/about/sit/)), people in the AirLab built several specialized sensor components and robots to explore the possibilities of applying our knowledge and skills to the commonwealth of the general public.

With the target of enabling automated infrastructure inspection for structures such as buildings and bridges, we developed a series of sensor payload and drone systems that are able to automatically collect multi-model data, with an offline reconstruction system that utilizes the data collected to reconstruct the dense 3D model of the structure with geometric details and colored textures. The reconstructed data can be utilized for inspection purposes such as surface defect detection and quantification. They can also be further processed into 3D geometries that are suitable for scientific and engineering computation and analysis, e.g. structural safety analysis.

<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/01_overview.jpg" style="width:100%" />
  <figcaption>
  Overview of automated infrastruture inspection. <br/>
  *: Collaborations with the KLab and .CerLab. at Carnegie Mellon University.
 </figcaption>
</figure>

{% youtube f8_asLTRino %}

{% youtube f6rbAVIwvnk %}

To fulfill the infrastructure inspection requirements, the sensor components and the robot platform need to deliver some important features:
- Sub-millimeter 3D reconstruction for better defect quantification.
- Computer-aided inspection capability for working with human inspectors.
- Automatic defect detection in images.
- Reconstruction of the inspected target for computer-aided engineering such as Finite Element Method (FEM) computations of structural safety analysis.

There are several challenges we have addressed:
- Extremely dense 3D reconstruction.
- Stereo Structure-from-Motion (SfM).
- High-resolution binocular stereo vision.
- Robust robot state estimation.
- Abstract mapping for lightweight localization.

Some highlights of our reconstruction results from real-world data.

<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/ov_01_connecticut.jpg" style="width:100%" />
  <img src="/img/posts/2023-01-17-shimizu-updated/ov_02_connecticut.jpg" style="width:100%" />
  <figcaption>
  A bridge girder of ~70m long.
 </figcaption>
</figure>

<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/ov_03_beam.jpg" style="width:100%" />
  <figcaption>
  A concrete beam specimen.
 </figcaption>
</figure>

<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/ov_04_bridge_section.jpg" style="width:100%" />
  <figcaption>
  A bridge section.
 </figcaption>
</figure>

In the course of resolving the challenges and fulfilling the research objectives, the team in the AirLab built a series of hardware and software. 

# Sensors & Robots #

## Hardware at a glance ##

<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/02_hardware_at_a_glance.jpg" style="width:100%" />
  <figcaption>
  The sensor components and the robots we worked on.
 </figcaption>
</figure>

The sensor components are featured as the following. It is a multi-modal sensor payload with the capability of real-time SLAM and high-resolution imaging.

<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/03_sensors.jpg" style="width:100%" />
  <img src="/img/posts/2023-01-17-shimizu-updated/04_installation_configurations.jpg" style="width:100%" />
  <figcaption>
  Rotating LiDAR with various installation configurations.
 </figcaption>
</figure>

{% youtube Gy-LWZ738zo %}

<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/05_dual_lidar.jpg" style="width:100%" />
  <figcaption>
  Dual-LiDAR for better SLAM in deteriorated environments.
 </figcaption>
</figure>

## Software created for working with the sensors and robots ##

For our specialized sensor payloads, we have developed many pieces of software to effectively utilize them.

__Customized time serving and time synchronization.__
A customized solution for easy synchronizing multiple sensors and the computer.

__Camera driver for binocular stereo camera.__
Hardware time synchronization and external hardware triggers for the stereo camera. Custom exposure control for better consistency between the two cameras of the stereo camera.

__LiDAR-camera extrinsic calibration.__
<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/10_lidar_camera_calibration.jpg" style="width:100%" />
  <figcaption>
  Calibrating the extrinsics between LiDAR and camera using edge information in the scene
 </figcaption>
</figure>

__Stereo camera calibration.__
Intrinsic and extrinsic calibration of the stereo camera.

__Thermal camera calibration.__
We designed several thermal targets for calibrating the intrinsics of the thermal camera.

<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/11_thermal_intrinsics.jpg" style="width:100%" />
  <figcaption>
  Different targets for thermal camera calibration.
 </figcaption>
</figure>

__Thermal-RGB-LiDAR calibration.__
Joint calibration for the extrinsics among thermal camera, RGB camera, and LiDAR.

<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/12_thermal_rgb_lidar_calib.jpg" style="width:100%" />
</figure>

__Automatic color correction.__
Automatically detect the color target using a deep-learning method. Automatically locate the target color block and correct the image color. Vignetting correction with multiple frames of detection.

<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/13_auto_color_correction.jpg" style="width:100%" />
</figure>

{% youtube 9D_ScohNFko %}

__IMU orientation calibration.__
Detected procedure for calibrating the rotated angle of the IMU once the payload changes its configuration.

<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/14_IMU_angle.jpg" style="width:80%" />
</figure>

## Autonomy ##

__Dual-LiDAR-IMU real-time state estimation.__

<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/15_luce_drone_duo_lidar.jpg" style="width:100%" />
  <img src="/img/posts/2023-01-17-shimizu-updated/16_odometry.jpg" style="width:100%" />
  <figcaption>
  Robust dual-LiDAR-IMU odometry runs in real-time.
 </figcaption>
</figure>

__Full-stack autonomy software.__
A full-stack autonomy software developed in the AirLab has been deployed on our drone. The autonomy software implements the robot state machine, global and local trajectory planning, and robot control.

{% youtube 9PEF0UA6OkI %}

__Computer-aid inspection route planning.__
A simple GUI for the human inspector to design and manage inspection routes. 

{% youtube Y2SE4JpLVWE %}
{% youtube KnuLxzohJVk %}

## Data processing ##

Due to the sheer amount of data we need to handle, many of the data processing procedures are facilitated by automatic scripts and run on remote servers.

__Data extraction and pre-processing.__
Images and point clouds are extracted from a large amount of raw data and preprocessed by leveraging the multi-core structure of the remote server. Parallel computing is applied whenever we can. 

__Large-scale 3D reconstruction.__
We have a set of dedicated programs and scripts to process the collected data and perform large-scale 3D reconstruction on HPCs. Similar to pre-processing, we try to leverage the multi-core architectures on the remote server to accelerate the process. This allows us to do reconstructions with billions of 3D points.


__Meshing.__
Customized program for automatically converting a point cloud to a surface mesh. Automatically, fill the holes in the surface mesh. The following is an example where we scanned a concrete beam specimen and reconstructed a dense point cloud of it. Then a surface mesh is generated with hole-filling.

<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/17_meshing.jpg" style="width:100%" />
  <figcaption>
  Conversion from a point cloud to a surface mesh.
 </figcaption>
</figure>

__Thermal-mapping.__
With the reconstructed dense 3D point cloud based on RGB images, we can project the thermal image to the point cloud. Special treatments are applied to smooth the intensity values of the thermal images to have temporal-consistent thermal pixel values.

<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/18_thermal_mapping.jpg" style="width:100%" />
  <figcaption>
  Project thermal data to a point cloud.
 </figcaption>
</figure>

# Research #

Apart from the engineering efforts, we also identified several research topics and pushed the relevant state-of-the-art toward more accurate, efficient, and robust algorithms. 

## Stereo & LiDAR-enhanced SfM ##
We developed new algorithms by introducing stereo image constrain and LiDAR information to Structure-from-Motion (SfM). By doing this, the SfM becomes much more robust to noise and mismatches and the reconstructed point clouds have the correct scale.

<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/19_sfm.jpg" style="width:100%" />
</figure>

{% youtube GUcKZ2PLPRQ %}
{% youtube dJaaF8POB64 %}

Related work: Estimating the Localizability of Tunnel-like Environments using LiDAR and UWB.

{% youtube ZK8wA3pyPyE %}

## High-resolution binocular stereo vision ##
Perform reconstruction on a single pair of 4K-resolution stereo images. A single stereo pair results in ~12M reconstructed points that allow us to preserve as much detail as possible. Deep-learning methods are utilized.

<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/20_stereo.jpg" style="width:100%" />
  <figcaption>
  Sample scenes and reconstructed dense point clouds.
 </figcaption>
</figure>

{% youtube X7j2-vkyZ9A %}
{% youtube MibLMu-f14I %}

## Line-based 2D-3D localization ##
Exploit that line features in the inspected scenes to do better localization against a pre-built map. Can also be used to aid real-time visual odometry for more accurate and robust performance.

<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/21_line_based_localization.jpg" style="width:100%" />
  <figcaption>
  Sample scenes and reconstructed dense point clouds.
 </figcaption>
</figure>

Line detection.
{% youtube fUstzW7VsF0 %}

Visual odometry and localization by line matching.
{% youtube 3AjgdmW4RCQ %}

## Abstract mapping ##
Turn a heavy point cloud map into a lightweight abstract map represented by primitive geometries such as second-order surfaces (quadrics). Utilize the abstract map to do faster localization.

<figure>
  <img src="/img/posts/2023-01-17-shimizu-updated/22_abstract_mapping.jpg" style="width:100%" />
  <figcaption>
  Sample scenes and reconstructed dense point clouds.
 </figcaption>
</figure>

{% youtube dTuwAkVQGnQ %}

# Publications #
- __Unified Representation of Geometric Primitives for Graph-SLAM Optimization Using Decomposed Quadrics.__ By Zhen, W., Yu, H., Hu, Y. and Scherer, S. In 2022 International Conference on Robotics and Automation (ICRA), 2022.
- __ORStereo: Occlusion-Aware Recurrent Stereo Matching for 4K-Resolution Images.__ By Hu, Y., Wang, W., Yu, H., Zhen, W. and Scherer, S. In 2021 IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS), pp. 5671-5678, 2021.
- __ULSD: Unified Line Segment Detection across Pinhole, Fisheye, and Spherical Cameras.__ By Li, H., Yu, H., Yang, W., Yu, L. and Scherer, S. In ISPRS Journal of Photogrammetry and Remote Sensing, vol. 178, pp. 187–202, 2021.
- __Deep-Learning Assisted High-Resolution Binocular Stereo Depth Reconstruction.__ By Hu, Y., Zhen, W. and Scherer, S. In 2020 IEEE International Conference on Robotics and Automation (ICRA), pp. 8637–8643, , 2020.
- __LiDAR-enhanced Structure-from-Motion.__ By Zhen, W., Hu, Y., Yu, H. and Scherer, S. In 2020 IEEE International Conference on Robotics and Automation (ICRA), , pp. 6773–6779, , 2020.
- __Line-Based 2D–3D Registration and Camera Localization in Structured Environments.__ By Yu, H., Zhen, W., Yang, W. and Scherer, S. In IEEE Transactions on Instrumentation and Measurement, vol. 69, no. 11, pp. 8962–8972, Jul. 2020.
- __Monocular Camera Localization in Prior LiDAR Maps with 2D-3D Line Correspondences.__ By Yu, H., Zhen, W., Yang, W., Zhang, J. and Scherer, S. In IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS), 2020.
- __A Joint Optimization Approach of LiDAR-Camera Fusion for Accurate Dense 3-D Reconstructions.__ By Zhen, W., Hu, Y., Liu, J. and Scherer, S. In IEEE Robotics and Automation Letters, vol. 4, no. 4, pp. 3585–3592, Oct. 2019.
- __A Unified 3D Mapping Framework Using a 3D or 2D LiDAR.__ By Zhen, W. and Scherer, S. In International Symposium on Experimental Robotics, pp. 702–711, 2018.
- __Achieving Robust Localization in Geometrically Degenerated Tunnels.__ By Zhen, W. and Scherer, S. In Workshop on Challenges and Opportunities for Resilient Collective Intelligence in Subterranean Environments, Pittsburgh, Pa, 2018.
- __Robust localization and localizability estimation with a rotating laser scanner.__ By Zhen, W., Zeng, S. and Scherer, S. In Proceedings - IEEE International Conference on Robotics and Automation, Singapore, Singapore, pp. 6240–6245, 2017.

# Contributors #

Long term
- [Dr. Sebastian Scherer](https://theairlab.org/team/sebastian/) (PI)
- [Weikun Zhen](https://theairlab.org/team/alumni/weikun/)
- [Yaoyu Hu](https://theairlab.org/team/yaoyuh/)
- [Huai Yu](https://levenberg.github.io)
- [Junbin Yuan](https://theairlab.org/team/junbiny/)

Short term. Thank you so much for your help! (Alphabetical order)
- [Andrew Saba](https://theairlab.org/team/andrews/)
- Chenxi Ji, Intern from Tsinghua University, China
- [Henry (Hengrui) Zhang](https://theairlab.org/team/alumni/hengruiz/)
- [Jingfeng Liu](https://theairlab.org/team/alumni/jingfengl/)
- [John Keller](https://theairlab.org/team/johnk/)
- Longwen Zhang, Intern from ShanghaiTech University, China
- Punit Bhatt, MSCV at CMU
- [Sam Zeng](https://theairlab.org/team/alumni/sam_zeng/)
- Weyne (Ruixuan) Liu, Intern at CMU
