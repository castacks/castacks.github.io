---
layout: post
title:  "Image Sharing"
date:   2023-10-26 10:50:07
categories: research
description: "Image Sharing"
author: "John Keller"
published: true
image: /img/posts/2023-10-26-image_sharing/image_sharing.png
hide_hero: true
tags: Project Overview
---

The image sharing library allows a user to transfer images between processes on an Nvidia Jetson computer. It
has lower latency, higher FPS, drops less images, and uses less CPU than ROS. There are C++ and
Python versions of the library. It uses a publisher subscriber paradigm and is designed to be as similar
to ROS as possible. Also for image sharing, a publisher publishes a set of time synced images that are
received as a list of images on the subscriber side. This avoids the ROS method where a special group
of synced subscribers have to be created with the message_filters library and different callbacks are
needed for different numbers of images. It includes the following features:

- Argus camera driver. This uses Nvidia’s Argus API to receive images from a camera and puts
them directly into the format that the image sharing library uses for transferring images between processes.

- Tools for converting to and from ROS image messages.

- Tools for converting to and from gstreamer. For example, it can be converted to gstreamer to log images to mp4 or stream over a network.

- Interoperability with OpenCV, CUDA, VPI, and Numpy.

- Quickly resize, rotate, crop, scale, and copy images without using the CPU.

- Non-Jetson version for development without having to use a Jetson computer. This is a version
of the image sharing library for non-Jetson computers which has the same C++ API so that
development can be done without having to use a Jetson computer. It transfers images between
processes in an inefficient way and is purely for development. It is also not compatible with
CUDA and VPI in the same way that the Jetson version is.


There are example programs showing everything listed above.

Image sharing is compatible with L4T 32.7.1 on the Xavier NX and L4T 35.1.0 on the Orin AGX.

Please contact us if you are interested in adopting the library.

## Performance

The graphs below show performance comparisons between image sharing and ROS for transferring
images between processes on a Xavier NX. There is one node that publishes 1 megapixel images at 60
Hz obtained from between 1 and 6 cameras using Nvidia’s Argus camera API and a second node that
subscribes to the images. There are two versions of the nodes, one version using image sharing and the
other using ROS.

The “Delay” graph shows the milliseconds of delay from when a set of images was published in the
publisher node to when they were received in the callback of the subscriber node. For six images on a
Xavier NX, the delay is 18 ms for image sharing and 82ms for ROS. Image sharing has 4.5 times less
delay. For six images on an Orin AGX, the delay is 14ms for image sharing and 64ms for ROS. Image
sharing has 4.6 times less delay.

In the “Published and Dropped Images” graph, an image is considered dropped if it was published by
the image publisher node but wasn’t received by the subscriber node. For the Xavier NX with six
cameras, 152 images are dropped with image sharing versus 491 dropped with ROS, a 3.2 times
improvement. On the Orin AGX with six cameras, only 1 image is dropped with image sharing versus
252 dropped with ROS.The “FPS” graph shows how many sets of synced images are received per second by the subscriber
node. For the Xavier NX with six cameras, the FPS is 56.9 for image sharing and 4.5 for ROS, a 12.8
times improvement. For the Orin AGX with six cameras, the FPS is 60 for image sharing and 12 for
ROS, a 5 times improvement. ROS is significantly worse because it’s high CPU usage makes it less
likely that images will be received from the camera and also less likely that once they are received from
the camera, that they will make it to the subscriber. Since all six images are required for the subscriber
to be triggered, missing just a single image will result in that whole group of images not being used.

The “CPU Usage” graph shows the CPU usage of the publisher and subscriber nodes, where 100%
means that one core is being used. For both the Xavier NX and Orin AGX with six cameras, ROS uses
close to 100% CPU for the publisher node versus 70% for image sharing. For the subscriber nodes,
ROS uses 26% on the Xavier and 27% on the Orin versus 20% on the Xavier and 16% for image
sharing. Image sharing uses less CPU for both the publisher and subscriber nodes than ROS, even
though image sharing is publishing and receiving significantly more images than ROS.

<figure>
 <img src="/img/posts/2023-10-26-image_sharing/Orin_AGX_1_MP_60_Hz_.png" alt="Orin AGX" />
</figure>


<figure>
 <img src="/img/posts/2023-10-26-image_sharing/Xavier_NX_1_MP_60_Hz_.png" alt="Xavier NX" />
</figure>
