---
layout: page
title: Air Series Articles Released
categories: research
author: "Chen Wang"
published: true
permalink: /airseries/
image: /img/posts/2022-03-12-air-series/AirDet-16x9.gif
datatable: true
hero_height: is-small
title_image: None
link-new-tab: true
show_sidebar: true
hide_footer: false
---

**Air Series** is a collection of **articles mentored by [Chen Wang](https://chenwang.site)**.

A wide variety of topics in **robotics** are covered, including **localization**, **detection**, and **lifelong learning**.

All articles are **first authored by Undergraduate or Master students** and **second authored by Chen Wang**.


<style>
.csl-block {
    font-size: 16px;
}
.csl-title, .csl-author, .csl-event, .csl-editor, .csl-venue {
    display: block;
    position: relative;
    font-size: 15px;
}

.csl-title b {
    font-weight: 600;
}

.csl-content {
    display: inline-block;
    vertical-align: top;
    padding-left: 20px;
}

.bibliography {
   list-style-type: none;
}
</style>


## Air Series Articles

{% bibliography --query @*[keywords=airseries] %}


### First Author Information (When work was done)

* [Bowen Li](https://jaraxxus-me.github.io/)
   * RISS intern at Carnegie Mellon University.
   * Junior student at Tongji University, China.
   * Now: Incoming PhD student of [CMU RI](https://www.ri.cmu.edu/).

* [Nikhil Varma Keetha](https://www.linkedin.com/in/nikhil-varma-keetha-612685193/)
   * RISS intern at Carnegie Mellon University.
   * Junior student at Indian Institute of Technology Dhanbad.
   * Now: Incoming Master student of [CMU RI](https://www.ri.cmu.edu/).

* [Dasong Gao](https://scholar.google.com/citations?user=_loctXsAAAAJ&hl=en)
   * Master student at Carnegie Mellon University.
   * Now: Incoming PhD student of [MIT EECS](https://www.eecs.mit.edu/).

* [Yuheng Qiu](https://scholar.google.com/citations?user=aEK45mEAAAAJ)
   * Undergraduate of Chinese University of Hong Kong.
   * Now: PhD student of [CMU ME](https://www.meche.engineering.cmu.edu/).

* Kuan Xu
   * Master Graduate of Harbin Institute of Technology, China.
   * Engineer at Tencent and Geekplus.
   * Now: Incoming PhD student of [NTU EEE](https://www.ntu.edu.sg/eee).


### Contribution


* **AirDet: Few-shot Detection without Fine-tunning**

   * The first practical few-shot object detection method that requires no fine-tunning.
   * It achieves even better results than the exhaustively fine-tuned methods (up to 60% improvements).
   * Validated on real world sequences from DARPA Subterranean (SubT) challenge.

<figure>
    <img src="/img/posts/2022-03-12-air-series/AirDet.gif" />
    <figcaption>
        Only three examples are given for novel object detection without fine-tunning.
    </figcaption>
</figure>

* **AirObject: Temporal Object Embedding**

   * The first temporal object embedding method.
   * It achieves the state-of-the-art performance for video object identification.
   * Robust to severe occlusion, perceptual aliasing, viewpoint shift, deformation, and scale transform.
   * [Project Page](/airobject)

<figure>
    <img src="/img/posts/2022-03-12-air-series/AirObject.gif" />
    <figcaption>
        Temporal object matching on videos.
    </figcaption>
</figure>

* **AirDOS: Dynamic Object-aware SLAM (DOS) system**

   * The first DOS system showing that camera pose estimation can be improved by incorporating dynamic articulated objects.
   * Establish 4-D dynamic object maps.
   * [Project Page](/airdos)

<figure>
    <img src="/img/posts/2022-03-12-air-series/AirDOS.gif" />
    <figcaption>
        Dynamic Objects can correct the camera pose estimation.
    </figcaption>
</figure>

* **AirLoop: Lifelong Learning for Robots**

   * The first lifelong learning method for loop closure detection.
   * Model incremental improvement even after deployment.
   * [Project Page](/airloop)

<figure>
    <img src="/img/posts/2021-09-28-airloop/tartanair-ll.gif" />
    <figcaption>
        The model is able to correct previously made mistakes after learning more environments.
    </figcaption>
</figure>

* **AirCode: Robust Object Encoding**

   * The first deep point-based object encoding for single image.
   * It achieves the state-of-the-art performance for object re-identification.
   * Robust to viewpoint shift, object deformation, and scale transform.
   * [Project Page](/aircode)

<figure>
    <img src="/img/posts/2021-10-06-aircode/object-matching1.gif" />
    <img src="/img/posts/2021-10-06-aircode/object-matching2.gif" />
    <figcaption>
        A human matching demo.
    </figcaption>
</figure>

Congratulations to the above young researchers!

More information can be found at the [research page](/research).
