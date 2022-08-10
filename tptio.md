---
title: TP-TIO
subtitle: A Robust Thermal-Inertial Odometry with Deep ThermalPoint
layout: page
show_sidebar: false
hide_footer: false
hero_height: is-large
hero_image: img/tptio/tp-tio.gif
---

# About TP-TIO

To achieve robust motion estimation in visually degraded environments, thermal odometry has been an attraction in the robotics community. However, most thermal odometry methods are purely based on classical feature extractors, which is difficult to establish robust correspondences in successive frames due to sudden photometric changes and large thermal noise. To solve this problem, we propose ThermalPoint, a lightweight feature detection network specifically tailored for producing keypoints on thermal images, providing notable anti-noise improvements compared with other state-of-the-art methods. After that, we combine ThermalPoint with a novel radiometric feature tracking method, which directly makes use of full radiometric data and establishes reliable correspondences between sequential frames. Finally, taking advantage of an optimization-based visual-inertial framework, a deep feature-based thermal-inertial odometry (TP-TIO) framework is proposed and evaluated thoroughly in various visually degraded environments. Experiments show that our method outperforms state-of-the-art visual and laser odometry methods in smoke-filled environments and achieves competitive accuracy in normal environments.

<div>
<br>
    <iframe width="100%" height="400" style="display: block; margin-left: auto; margin-right: auto; width: 50%;"  src="https://www.youtube.com/embed/aa4whgmYTqY" title="Website - Sensor Video" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>


background: rgba(10, 10, 10, 0.5); border-radius: 20px;
          max-width: 1300px; text-align: center; top: 500px; left: 0; right: 0; margin-left: auto; margin-right: auto; position: absolute; color: #F5F5F5;

<script>

    window.onload = function () {
        let p = document.getElementsByClassName("title is-2")[0].parentElement;
        p.style.background = "rgba(10, 10, 10, 0.5)";
        p.style.borderRadius = "20px";
        p.style.padding = "20px";
        p.style.width = "fit-content";
        p.style.margin = "0px";
    }

    let p = document.getElementsByClassName("title is-2")[0].parentElement;
    p.style.background = "rgba(10, 10, 10, 0.5)";
    p.style.borderRadius = "20px";
    p.style.padding = "20px";
    p.style.width = "fit-content";
    p.style.margin = "0px";
</script>

## Citation

Zhao, Shibo, et al. "Tp-tio: A robust thermal-inertial odometry with deep thermalpoint." 2020 IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS). IEEE, 2020.

@inproceedings{zhao2020tp,
  title={Tp-tio: A robust thermal-inertial odometry with deep thermalpoint},
  author={Zhao, Shibo and Wang, Peng and Zhang, Hengrui and Fang, Zheng and Scherer, Sebastian},
  booktitle={2020 IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS)},
  pages={4505--4512},
  year={2020},
  organization={IEEE}
}
