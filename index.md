---
title: Super odometry
subtitle: IMU-centric LiDAR-Visual-Inertial Estimator
layout: page
show_sidebar: false
hide_footer: false
hero_height: is-large
hero_image: img/super_odometry/superodom_video.gif
hero_link: /team
hero_link_text: See Our Team
---

# About Super Oodometry

We propose Super Odometry, a high-precision multi-modal sensor fusion framework, providing a simple but effective way to fuse multiple sensors such as LiDAR, camera, and IMU sensors and achieve robust state estimation in perceptually-degraded environments. Different from traditional sensor-fusion methods, Super Odometry employs an IMU-centric data processing pipeline, which combines the advantages of loosely coupled methods with tightly coupled methods and recovers motion in a coarse-to-fine manner. The proposed framework is composed of three parts: IMU odometry, visual-inertial odometry, and laser-inertial odometry. The visual-inertial odometry and laser-inertial odometry provide the pose prior to constrain the IMU bias and receive the motion prediction from IMU odometry. To ensure high performance in real-time, we apply a dynamic octree that only consumes 10 % of the running time compared with a static KD-tree. The proposed system was deployed on drones and ground robots, as part of Team Explorer's effort to the DARPA Subterranean Challenge where the team won 1st and 2nd place in the Tunnel and Urban Circuits, respectively.

<div>
    <div style="float: left; width: 48%">
    <div class="video-wrapper"><iframe src="https://www.youtube.com/embed/aa4whgmYTqY" frameborder="0" allowfullscreen></iframe></div>
    </div>
    <div style="float: right; width: 48%;">
    <div class="video-wrapper"><iframe src="https://www.youtube.com/embed/nHVOW_jl2m8" frameborder="0" allowfullscreen></iframe></div>
    </div>
</div>
