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

# About Super Odometry

We propose Super Odometry, a high-precision multi-modal sensor fusion framework, providing a simple but effective way to fuse multiple sensors such as LiDAR, camera, and IMU sensors and achieve robust state estimation in perceptually-degraded environments. Different from traditional sensor-fusion methods, Super Odometry employs an IMU-centric data processing pipeline, which combines the advantages of loosely coupled methods with tightly coupled methods and recovers motion in a coarse-to-fine manner. The proposed framework is composed of three parts: IMU odometry, visual-inertial odometry, and laser-inertial odometry. The visual-inertial odometry and laser-inertial odometry provide the pose prior to constrain the IMU bias and receive the motion prediction from IMU odometry. To ensure high performance in real-time, we apply a dynamic octree that only consumes 10 % of the running time compared with a static KD-tree. The proposed system was deployed on drones and ground robots, as part of Team Explorer's effort to the DARPA Subterranean Challenge where the team won 1st and 2nd place in the Tunnel and Urban Circuits, respectively.

<div>
    <div style="float: left; width: 48%">
    <div class="video-wrapper"><iframe src="https://www.youtube.com/embed/YN1T4mQgWmY" frameborder="0" allowfullscreen></iframe></div>
    </div>
    <div style="float: right; width: 48%;">
    <div class="video-wrapper"><iframe src="https://www.youtube.com/embed/nHVOW_jl2m8" frameborder="0" allowfullscreen></iframe></div>
    </div>
</div>


## Citation

Zhao, Shibo, et al. "Super odometry: IMU-centric LiDAR-visual-inertial estimator for challenging environments." 2021 IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS). IEEE, 2021. [Paper](https://arxiv.org/abs/2104.14938)

```
@inproceedings{zhao2021super,
  title={Super odometry: IMU-centric LiDAR-visual-inertial estimator for challenging environments},
  author={Zhao, Shibo and Zhang, Hengrui and Wang, Peng and Nogueira, Lucas and Scherer, Sebastian},
  booktitle={2021 IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS)},
  pages={8729--8736},
  year={2021},
  organization={IEEE}
}
```

## Acknowledgments

The authors would like to express sincere thanks to Professor [Ji Zhang](https://frc.ri.cmu.edu/~zhangji/) and Professor Michael Kaess [https://www.cs.cmu.edu/~kaess/] for their constructive advice. Meawhile, we would like to thank these great works from which we learned to develop Super Odometry. 

[LOAM](https://www.ri.cmu.edu/pub_files/2014/7/Ji_LidarMapping_RSS2014_v8.pdf) 
[VINS-MONO] (https://ieeexplore.ieee.org/document/8421746?arnumber=8421746&source=authoralert) 
[GTSAM] (https://github.com/borglab/gtsam)


## Contacts

If you have any question or want to contribute this work, please feel free to send email to Shibo Zhao (shiboz@andrew.cmu.edu).  Thank you! :)








