---
layout: post
title: "Multi-Robot Multi-Room Exploration with Geometric Cue Extraction and Circular Decomposition"
date: 2023-12-06 2:00:01
categories: research
description: "We present an autonomous multi-robot exploration pipeline that coordinates the behaviors of robots in an indoor environment composed of multiple rooms."
author: "Seungchan Kim"
published: true
redirect: "https://seungchan-kim.github.io/multi-robot-multi-room"
show_sidebar: false
# slim_content_width: true
permalink: /multi-robot-multi-room/
image: /img/posts/2023-12-06-multirobot-multiroom/mrmr_intro_fig.png
datatable: true
title_image: None
hero_image: /img/posts/2023-12-06-multirobot-multiroom/mrmr_intro_fig.png
hero_height: is-large
remove_hero_title: false
menubar_toc: false
tags: Planning
---

This work proposes an autonomous multi-robot exploration pipeline that coordinates the behaviors of robots in an indoor environment composed of multiple rooms. Contrary to simple frontier-based exploration approaches, we aim to enable robots to methodically explore and observe an unknown set of rooms in a structured building, keeping track of which rooms are already explored and sharing this information among robots to coordinate their behaviors in a distributed manner. To this end, we propose (1) a geometric cue extraction method that processes 3D point cloud data and detects the locations of potential cues such as doors and rooms, (2) a circular decomposition for free spaces used for target assignment. Using these two components, our pipeline effectively assigns tasks among robots, and enables a methodical exploration of rooms. We evaluate the performance of our pipeline using a team of up to 3 aerial robots, and show that our method outperforms the baseline by 33.4% in simulation and 26.4% in real-world experiments.

Read more on the [paper website here](https://seungchan-kim.github.io/multi-robot-multi-room).
