---
layout: post
title: "TartanAviation: Vision, Speech, and Trajectory Datasets for Terminal Airspace Operations"
date: 2023-10-02 9:00:07
categories: datasets
description: "TrajAir lends well for training, testing, and benchmarking algorithms related to trajectory prediction, including socially-aware models."
author: "Brady Moon"
published: true
show_sidebar: false
# slim_content_width: true
permalink: /tartan-aviation/
image: /img/posts/2021-06-15-trajair/trajAirBannerV2.png
datatable: true
title_image: None
hero_image: /img/posts/2021-06-15-trajair/trajAirBannerV2.png
hero_height: is-large
remove_hero_title: true
menubar_toc: true
---

<!-- ## Introduction ##  -->
The TartanAviation dataset is a comprehensive resource that addresses the challenges posed by the increasing demand for shared airspace operations. Unlike prior datasets, it offers diverse data types, including trajectory positions, video flight sequences, and audio communications between pilots and air traffic controllers. Including these data types enables researchers and industry professionals to analyze flight patterns, study communication protocols, and develop innovative technologies and systems for safer and more efficient air travel. The TartanAviation dataset is expected to foster research and development in several areas, including conflict detection, natural language processing, decision-making systems, and human-robot interaction. Overall, it represents a significant contribution to the aviation industry, facilitating the development of advanced solutions for the growing challenges in shared airspace operations.



## Dataset ##
<!-- The dataset is collected at the Pittsburgh-Butler Regional Airport [ICAO:KBTP], a single runway GA airport, 10 miles North of the city of Pittsburgh, Pennsylvania. Additional information about KBTP is available [online](http://www.airnav.com/airport/kbtp). The trajectory data is recorded using an on-site setup that includes an ADS-B receiver, 360 camera, and radio. The trajectory data provided spans days from 18 Sept 2020 till 23 Apr 2021 and includes a total of 111 days of data discounting downtime, repairs, and bad weather days with no traffic. Data is collected starting at 1:00 AM local time to 11:00 PM local time. -->

The **TrajAir** dataset is collected at the Pittsburgh-Butler Regional Airport (ICAO:KBTP), a single runway GA airport, 10 miles North of the city of Pittsburgh, Pennsylvania. Additional information about KBTP is available [online](http://www.airnav.com/airport/kbtp). Aircraft entering and leaving non-towered airspace need to follow guidelines established by the FAA to ensure safety and efficiency of all participating agents. KBTP has Left Traffic patterns for both runways. These patterns are rectangular-shaped with left-handed turns relative to the direction of landing or takeoff. Figure 1 shows the traffic pattern for Runway 8 and 26 around KBTP with corresponding direction of traffic flow. Aircraft usually take-off or land into the wind and hence the nomenclature follows this sequence. When an aircraft takes-off it is on an upwind leg. A left turn puts it on a crosswind leg, followed by turns into downwind leg and base leg. The final left turn puts the aircraft on the final leg for a touch-down. FAA also establishes that an entry into the pattern should be at a 45 degree angle to the downwind leg.



<figure>
 <img src="/img/posts/2021-06-15-trajair/dataset.png" style="width:99%"/>
 <figcaption>
Figure 1: The dataset and its collection setup at the Pittsburgh-Butler Regional Airport, a non-towered GA airport which serves as a primary location for the dataset. Lighter color indicates lower altitude. (a) A snippet of the processed dataset with aircraft trajectories showing clear lobes for traffic patterns for both runways. (b) The left traffic pattern and nomenclature for the runways at the airport. The star-marker shows the approximate location of the data collection setup at the airport. (c) The data-collection setup.
 </figcaption>
</figure>

The trajectory data provided spans days from 18 Sept 2020 till 23 Apr 2021 and includes a total of 111 days of data discounting downtime, repairs, and bad weather days with no traffic. Data is collected starting at 1:00 AM local time to 11:00 PM local time.

<!-- More details. Total number of stuff. -->

### Collection Process
The dataset uses an [Automatic Dependent Surveillance-Broadcast (ADS-B) receiver](https://github.com/cyoung/stratux) placed within the airport premises to capture the trajectory data. The ADS-B In receiver receives data directly broadcasted by other aircraft with ADS-B Out. For aircraft that do not have a ADS-B Out, the Traffic Information Service-Broadcast (TIS-B) takes the position and altitude of aircraft using radar and converts that information into a format that’s compatible with ADS-B. It then broadcasts the information to our receiver. The receiver uses both the 1090 MHz and 978 MHz frequencies to listen to these broadcasts. The ADS-B uses satellite navigation to produce accurate location and timestamp for the targets which is recorded on-site using our custom setup.

We also include weather data during the data collection time period for environmental context. The weather data is obtained post-hoc using the METeorological Aerodrome Reports (METAR) strings generated by the Automated Weather Observing System (AWOS) system at KBTP. We use the [Iowa State METAR repository](https://mesonet.agron.iastate.edu/request/download.phtml) to gather all the weather data during the trajectory collection time-frame. The raw METAR string is then appended to the raw trajectory data by matching the closest UTC timestamps.


### Data Processing
The data obtained from the ADS-B receiver and the METAR strings is processed to make it suitable for training networks. The following steps are performed:
* Removal of data points that have corrupt or no location fields.
* Removal of duplicate data points with the same aircraft identifier and location fields.
* Removal of data points where the altitude is more than 6000 feet and distance is more than 5 kms from one end of the runway.
* Transforming the data to a local Cartesian coordinate frame in SI units. The origin is at the end of the runway with x-axis pointing along the runway.
* Processing raw METAR strings to get wind velocity and direction along and across the runway in the local Cartesian frame in SI units.
* Interpolating trajectory data every second for all agents using a cubic interpolation strategy.
* Segmenting the data into "scenes" with at least one active aircraft in the airport vicinity. A scene starts when at least one aircraft is active or enters the threshold and ends when all aircrafts have left the vicinity or are inactive.  

### Data Structure
The data is grouped into five different folders. The folder titled `111_days` contains the entire dataset, whereas the folders titled `7days1`, `7days2`, `7days3` and `7days4` contain a full week of contiguous data respectively. The contents and structure of each folder of data are shown in the example folder below:

```
7days1   
│
└───processed_data
│   └───train
│   │   │   1.txt
|   |   |   4.txt
|   |   |   ...
│   │
│   └───test
│       │   2.txt
│       │   3.txt
│       │   ...
│   
└───raw_data
    └───09-18-20_adsb
    └───09-19-20_adsb
    └───...
    └───09-24-20_adsb
        │   1.csv
```
The associated dates spanned by the processed data can be found by looking at the folder names within the `raw_data` folder. In the raw data, there is a CSV file for each day of data in the week. Within the processed data, the scenes are randomly separated into a train and test set with a 70/30 split.

Each scene is a text file with the following structure:

|Frame #| Aircraft ID  | x (km) | y (km) | z (km) | wind<sub>x</sub> (m/s)| wind<sub>y</sub> (m/s)|
| :-: | :-: | :-: | :-: | :-: | :-: | :-: |
|0| 10620674| 1.3407| 0.0026| 0.3353| 0.0| 0.0|
|1| 10620674| 1.3135| 0.0021| 0.3353| 0.0| 0.0|
|2| 10620674| 1.2863| 0.0017| 0.3353| 0.0| 0.0 |
|⋮|⋮|⋮|⋮|⋮|⋮|⋮|
|405 |10620674 |-3.8946| 1.5872 |0.9751 |0.0 |0.0|

The frames are at a rate of 1 Hz. The x, y, z positions are in respect to the inertial frame centered on the end of the runway with the x axis aligned with the runway. The variable wind<sub>x</sub> and wind<sub>y</sub> are the wind speeds in the x and y direction.

The weather data can be found in the `weather_data` folder which contains a CSV file containing the weather conditions for all data spanned by the dataset. The CSV variable explanations can be found on the website for the [Iowa State METAR repository](https://mesonet.agron.iastate.edu/request/download.phtml).

<!-- Example images/gif -->

### Download
The data can be downloaded below or directly from Kilthub [here](https://doi.org/10.1184/R1/14866251) where it is hosted or from the file explorer below:
<iframe src="https://widgets.figshare.com/articles/14866251/embed?show_title=1" width="568" height="351" allowfullscreen frameborder="0"></iframe>


<!-- {% include notification.html
message="This notification does not have an icon."
icon="false"
status="is-success" %}

{% raw %}
```liquid
{% include notification.html message="This is the message for the notification" %}
```
{% endraw %}

{% include notification.html
message="This notification does not have an icon."
icon="false"
status="is-info" %}

{% include notification.html
message="This **message** contains _markdown_ and a [link](https://www.csrhymes.com).

It also contains a second paragraph.

* List item
* List item
"  %} -->


<!-- | Date Range     | Download Link |
| -------- | ----------- |
| 18 Sept 2020 - 24 Sept 2020  | Title       |
| 14 Mar 2021 - 20 Mar 2021   | Text        |
| 19 Jan 2021 - 25 Jan 2021   | Text        |
| 17 Apr 2021 - 23 Apr 2021   | Text        | -->




<!-- One weeks worth of data can be downloaded [here](https://saadatasets.blob.core.windows.net/kbtp2/Processed%20Trajectories/7days_aitf_trajpred(1).zip?sv=2020-04-08&st=2021-06-07T19%3A38%3A03Z&se=2031-06-08T19%3A38%3A00Z&sr=b&sp=r&sig=O1IbdcakyNP9Ovp%2Fx9o%2FeHI23OBug%2BYUtQJdyb2DL8Q%3D). -->

<!-- ## Benchmarks

## Baselines -->





## Additional Info

### Citation
```

```


<!-- Please read our [paper](https://arxiv.org/abs/2003.14338) for details.

```
@misc{patrikar2021predicting,
      title={Predicting Like A Pilot: Dataset and Method to Predict Socially-Aware Aircraft Trajectories in Non-Towered Terminal Airspace},
      author={Jay Patrikar and Brady Moon and Jean Oh and Sebastian Scherer},
      year={2021},
      url={https://arxiv.org/abs/2109.15158},
      eprint={2109.15158},
      archivePrefix={arXiv},
      primaryClass={cs.RO}
}

@article{tartanair2020iros,
  title =   {TartanAir: A Dataset to Push the Limits of Visual SLAM},
  author =  {Wang, Wenshan and Zhu, Delong and Wang, Xiangwei and Hu, Yaoyu and Qiu, Yuheng and Wang, Chen and Hu, Yafei and Kapoor, Ashish and Scherer, Sebastian},
  booktitle = {2020 IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS)},
  year =    {2020}
}
``` -->

### Contact

Joao P. A. Dantas 

[Jay Patrikar](https://theairlab.org/team/jay/) - [jaypat@cmu.edu](mailto:jaypat@cmu.edu)

[Brady Moon](https://theairlab.org/team/bradym/) - [bradygmoon@cmu.edu](mailto:bradygmoon@cmu.edu)


### Acknowledgments
This work is supported by Mitsubishi Heavy Industries (MHI) project #A025279. This material is based upon work supported by the National Science Foundation Graduate Research Fellowship under Grant No. DGE1745016


### Term of use

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.
