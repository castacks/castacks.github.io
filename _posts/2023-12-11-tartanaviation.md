---
layout: post
title: "TartanAviation: Image, Speech, and Trajectory Datasets for Terminal Airspace Operations"
date: 2024-01-25 9:00:07
categories: datasets
description: "TartanAviation is an open-source multi-modal dataset focused on terminal-area airspace operations and provides a holistic view of the airport environment by concurrently collecting image, speech, and ADS-B trajectory data."
author: "Brady Moon"
published: true
show_sidebar: false
# slim_content_width: true
permalink: /tartanaviation/
image: /img/posts/2023-12-11-tartanaviation/TartanAviationBanner.png
datatable: true
title_image: None
hero_image: /img/posts/2023-12-11-tartanaviation/TartanAviationBanner.png
hero_height: is-large
remove_hero_title: true
menubar_toc: true
---

<!-- ## Introduction ##  -->
We introduce TartanAviation, an open-source multi-modal dataset focused on terminal-area airspace operations. TartanAviation provides a holistic view of the airport environment by concurrently collecting image, speech, and ADS-B trajectory data using setups installed inside airport boundaries. The datasets were collected at both towered and non-towered airfields across multiple months to capture diversity in aircraft operations, seasons, aircraft types, and weather conditions. In total, TartanAviation provides **3.1M images**, **3374 hours** of Air Traffic Control speech data, and **661 days** of ADS-B trajectory data. The data was filtered, processed, and validated to create a curated dataset. In addition to the dataset, we also open-source the code-base used to collect and pre-process the dataset, further enhancing accessibility and usability. We believe this dataset has many potential uses cases and would be particularly vital in allowing AI and machine learning technologies to be integrated into air traffic control systems and advance the adoption of autonomous aircraft in the the airspace.

<!-- The TartanAviation dataset is a comprehensive resource that addresses the challenges posed by the increasing demand for shared airspace operations. Unlike prior datasets, it offers diverse data types, including trajectory positions, video flight sequences, and audio communications between pilots and air traffic controllers. Including these data types enables researchers and industry professionals to analyze flight patterns, study communication protocols, and develop innovative technologies and systems for safer and more efficient air travel. The TartanAviation dataset is expected to foster research and development in several areas, including conflict detection, natural language processing, decision-making systems, and human-robot interaction. Overall, it represents a significant contribution to the aviation industry, facilitating the development of advanced solutions for the growing challenges in shared airspace operations. -->
<figure>
 <img src="/img/posts/2023-12-11-tartanaviation/abstract.png" style="width:99%"/>
 <figcaption>
Figure 1: Our custom data collection setup installed at the Allegheny County Airport with its approximate location within the airport premises with respect to the runway geometry. The setup recorded images, audio, and aircraft trajectory data.
 </figcaption>
</figure>




## Dataset ##
<!-- The dataset is collected at the Pittsburgh-Butler Regional Airport [ICAO:KBTP], a single runway GA airport, 10 miles North of the city of Pittsburgh, Pennsylvania. Additional information about KBTP is available [online](http://www.airnav.com/airport/kbtp). The trajectory data is recorded using an on-site setup that includes an ADS-B receiver, 360 camera, and radio. The trajectory data provided spans days from 18 Sept 2020 till 23 Apr 2021 and includes a total of 111 days of data discounting downtime, repairs, and bad weather days with no traffic. Data is collected starting at 1:00 AM local time to 11:00 PM local time. -->

 In this work, we introduce TartanAviation, a multi-modal dataset collected at towered and non-towered terminal areas within the US. The TartanAviation dataset covers three primary concurrently collected modalities of data: trajectory positions for capturing the spatial and temporal information of aircraft movements, video flight sequences collected with static cameras installed within terminal areas, and audio communications to document the voice interactions between pilots and air traffic controllers. While prior datasets in the aviation domain have focused on specific modalities like speech or vision, TartanAviation aims to provide a more holistic view of terminal airspace operations across various data modalities. Additionally, while previous datasets focus on large commercial airports, TartanAviation focuses on smaller regional airports within the Greater Pittsburgh area. Regional airports serve a multitude of different aircraft and mission profiles providing a richer and more diverse data stream. We specifically focus on two airports: the towered Allegheny County Airport (ICAO:KAGC) and the non-towered Pittsburgh-Butler Regional Airport (ICAO:KBTP). 


<figure>
 <img src="/img/posts/2023-12-11-tartanaviation/setup.png" style="width:99%"/>
 <figcaption>
Figure 2: Our custom setup hardware with the camera and ADS-B antenna mounts. Also shown is the data collection pipeline with the associated sensor suite and automatic logic that triggers camera and speech recordings.
 </figcaption>
</figure>


<!-- The trajectory data provided spans days from 18 Sept 2020 till 23 Apr 2021 and includes a total of 111 days of data discounting downtime, repairs, and bad weather days with no traffic. Data is collected starting at 1:00 AM local time to 11:00 PM local time. -->




<!-- More details. Total number of stuff. -->

### Download
The scripts to record, post-process, and download each modality are publicly available at [https://github.com/castacks/TartanAviation.git](https://github.com/castacks/TartanAviation.git).



### Data Structure
#### Image Data
The image dataset is split across 550 independent sequences. We define a sequence as all of the data recorded during a single event where the camera recordings were started and stopped. The vision data folder contains multiple zipped files, each associated with a particular camera recording for that sequence. Each zipped sequence folder has multiple files as presented in the table below. 

| **Extension**                       | **Nomenclature**                              | **Content**                       |
|------------------------------------------|----------------------------------------------------|----------------------------------------|
| .zip                                     | &lt;camera_id&gt;_&lt;timestamp&gt;                 | Zip folder containing sequence data    |
| &rarr; .mp4                   | &lt;camera_id&gt;_&lt;timestamp&gt;                 | Video File                             |
| &rarr;.avi                    | &lt;camera_id&gt;_&lt;timestamp&gt;_sink_verified | Video File with embedded labels        |
| &rarr;.srt                    | &lt;camera_id&gt;_&lt;timestamp&gt;_subtitle       | Raw timestamps of the recorded video   |
| &rarr;.pkl                    | &lt;camera_id&gt;_&lt;timestamp&gt;_sink_adsb     | Raw ADS-B dictionary                   |
| &rarr;.pkl                    | &lt;camera_id&gt;_&lt;timestamp&gt;_acft_sink     | Raw aircraft type data                 |
| &rarr;.zip                    | &lt;camera_id&gt;_&lt;timestamp&gt;_labels         | Zip folder containing the image labels |
| &rarr;&rarr;.label | &lt;frame_number&gt;.label                     | Text file containing label data        |



In addition to the video files and labels, we also provide ADS-B data for each sequence. When downloaded with the provided script, they are organized as follows:

```
image_data
└── 1_2023-02-22-15-21-49
    |   1_2023-02-22-15-21-49_sink
    │   |   ...
    |   1_2023-02-22-15-21-49.mp4
    |   1_2023-02-22-15-21-49_labels.zip
    |   1_2023-02-22-15-21-49_acft_sink.pkl
    |   1_2023-02-22-15-21-49_sink_adsb.pkl
    |   1_2023-02-22-15-21-49_sink_verified.avi
    |   1_2023-02-22-15-21-49_subtitle.srt
|   ...
```

#### Trajectory and Weather Data
TartanAviation provides both raw the processed data for each airport. Raw data is separated into individual folders for each day of collection. Each raw data folder has CSVs with fields detailed in Table \ref{tab:adsb}. The processed files are available as comma-separated TXT files with fields described in \ref{tab:adsb}. 

<figure>
  <img src="/img/posts/2023-12-11-tartanaviation/test_agc_raw.png" style="width:45%"/>
  <img src="/img/posts/2023-12-11-tartanaviation/test_btp_raw.png" style="width:45%"/>
 <figcaption>
Figure 3: Log-normed trajectory histograms from ADS-B aircraft position reports, KAGC on the left and KBTP on the right.
 </figcaption>
</figure>

#### Speech Data
Both the raw and filtered audio files are included in the dataset. The filtered data is organized in a directory structure by location, year, month, and day. Each day is indiviually zipped and contains audio files in the WAV format and has an accompanying text file that contains the start, end, and total time of the audio clip. When downloaded with the provided script, they are organized as follows:

```
audio_data   
│
└───kbtp
│   └───2020
|   |   └───01
|   |   └───...
|   |   └───12
│   │   │   |   1.wav
|   |   |   |   1.txt
|   |   |   |   ...
│   └───...
│   └───2022
│   
└───kagc
    └───2021
    └───...
    └───2023
```

### Data Collection and Processing
More details about the data collection and processing can be found in our paper.

<!-- Example images/gif -->




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
@article{patrikar2024tartanaviation,
	title={TartanAviation: Image, Speech, and ADS-B Trajectory Datasets for Terminal Airspace Operations}, 
	author={Jay Patrikar and Joao Dantas and Brady Moon and Milad Hamidi and Sourish Ghosh and Nikhil Keetha and Ian Higgins and Atharva Chandak and Takashi Yoneyama and Sebastian Scherer},
	year={2024},
	eprint={2403.03372},
	archivePrefix={arXiv},
	primaryClass={cs.LG},
	url={https://arxiv.org/pdf/2403.03372.pdf}
}
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

[Jay Patrikar](https://theairlab.org/team/jay/) - [jaypat@cmu.edu](mailto:jaypat@cmu.edu)

[Joao P. A. Dantas](http://www.joaopadantas.com) - [jpdantas@gmail.com](mailto:jpdantas@gmail)

[Brady Moon](https://theairlab.org/team/bradym/) - [bradygmoon@cmu.edu](mailto:bradygmoon@cmu.edu)


### Acknowledgments
This work is supported by Mitsubishi Heavy Industries (MHI) project #A025279. This material is based upon work supported by the National Science Foundation Graduate Research Fellowship under Grant No. DGE1745016.


<!-- ### Term of use

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>. -->
