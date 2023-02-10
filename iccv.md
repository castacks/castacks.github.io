---
title: Workshop on Robot Learning and SLAM
subtitle: Oct 02 - Oct 06 2023
layout: page
show_sidebar: false
hide_footer: false
hero_height: is-large
hero_image: img/tptio/tp-tio.gif
---

| <img src="img/iccv/iccv_show_1.png" width="850" /> | <img src="img/iccv/iccv_show_3.png" width="650" /> |

# Announcements
- **Outcome:**: The workshop had the highest number of registrants among all ICRA workshops/tutorials. We are grateful to all who participated.
- **Speaker slides:** Slides can be downloaded from this [page](#TODO) 
- **High registration:** The workshop now has 1170 registrants (608 in-person, 562 virtual). We are excited and look forward to seeing you!
- **Live broadcast:** The workshop Zoom link is available at https://events.infovaya.com/session?id=14353. To access the link, you need to register for ICRA (virtual access is free) and create an account on Infovaya.
- **Contributions:** Accepted submissions are posted and are available for download.
- **Posters:** While optional, we encourage authors of accepted papers to prepare a poster of their work. Posters will be displayed in a central hallway on poster boards - boards will be provided. Authors are responsible for printing their posters. Each poster should fit within a 4 foot x 4 foot space.
- **High number of submissions:** We received 48 paper submissions. We are grateful to all researchers who contributed to the workshop.

<!-- <div>
<br>
    <iframe width="100%" height="400" style="display: block; margin-left: auto; margin-right: auto; width: 50%;"  src="https://www.youtube.com/embed/YN1T4mQgWmY" title="Website - Sensor Video" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

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
</script> -->

## Outline
This workshop aims to present the latest results on the theory and practice of learning and algorithmic techniques for robotic perception and mapping. A series of contributed and invited talks by academic leaders and renowned researchers will discuss ground-breaking perception and mapping methods based on optimization and filtering, learning and data-driven models, uncertainty-aware and certifiable perception, multi-agent and distributed mapping, semantic representation, and mesh-based compression. The workshop will also discuss the current challenges and research directions in the next 5-10 years, and will include posters and spotlight talks to facilitate interaction between the speakers and the audience. The workshop plans to have a hybrid format with in-person speakers/attendees and a live broadcast to convey the message to a broader audience. Talk recordings and accepted contributions will be published on the workshop's webpage to broaden the research impact.

***EXPECTED OUTCOME:***
By facilitating discussion among participants, authors of contributed papers, and invited speakers, the workshop aims to study and answer the following fundamental questions:

1) What are the latest results and emerging research directions for algorithmic perception and mapping (such as optimization and graph-theoretic techniques)?

2) What are the latest results and emerging research directions for end-to-end and data-driven robotic perception and mapping?

3) How can existing solutions be used in multi-robot and distributed settings with asynchronous and/or incremental data?

4) How to utilize these methods in real-time systems with limited computational resources or in distributed systems with limited communication capacity and what are the trade-offs?

5) What are the correct notions, quantifications, and measures of accuracy for perception and mapping?

6) How is "failure" defined in perception and mapping and what is the consequence of failure in downstream applications?

## Schedule
 <table class="customFormat" style="width:100%border-collapse: collapse; border: none;">
  <tr>
    <b>
    <th style="width:10%;text-align: center;"></th>
    <th style="width:20%;text-align: center;"><b>Presenter</b></th>
    <th style="width:35%;text-align: center;">Session Title</th>
    <th style="width:15%;text-align: center;">Date/Time</th>
    <th style="width:20%;text-align: center;">YouTube Link</th>
    </b>
  </tr>
  <tr>
    <td style="text-align: center;"> <img class="circular_image" src="img/invited_speakers/basti.jpg"/> </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://www.ri.cmu.edu/ri-faculty/sebastian-scherer/">Sebastian Scherer</a>
      </p>
      <p style="margin-bottom: 3px;">Associate Research Professor, Robotics Institute</p>
      <p>Georgia Tech</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="bastiButton" class="button6" onclick="myFunction('bastiButton', 'bastiBlock')">Expand Contents</button> -->
      <!-- <a href="#basti" onclick="myFunction('bastiButton', 'bastiBlock')"> Outline and Links</a> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">Date: TBD</p>
      <p>Time: TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>

  <tr id=bastiBlock style="display: none">
    <td colspan="5" style="vertical-align: middle;margin-left: 20px;">
      <p> Outline:</p>
      <ul>
        <li>Overview of SLAM</li>
        <li>Learning-based methods for SLAM</li>
        <li>How do we handle the hard cases in SLAM? What are the challenges ahead?</li>
        <li>Bridging the gap between dataset validation and real-world system deployment</li>
      </ul>
      <a style="margin-bottom: 1px;" href="https://docs.google.com/presentation/d/1wW2BfEC7n0d78aajhLq-OBG1DQG0mATwpwwYFvwQ04g/edit?usp=sharing">Slides for the talk including resources to get started with SLAM</a>
    </td>
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="img/invited_speakers/lucacarlone.png"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://lucacarlone.mit.edu/">Luca Carlone</a>
      </p>
      <p style="margin-bottom: 3px;">Associate Professor in the Department of Aeronautics and Astronautics</p>
      <p>Massachusetts Institute of Technology</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TDB</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">Date: TBD</p>
      <p>Time: TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="img/invited_speakers/chenwang.jpg"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://engineering.buffalo.edu/computer-science-engineering/people/faculty-directory/full-time.host.html/content/shared/engineering/computer-science-engineering/profiles/faculty/ladder/wang-chen.html">Chen Wang</a>
      </p>
      <p style="margin-bottom: 3px;">Assistant Professor in Department of Computer Science and Engineering</p>
      <p>University of Buffalo</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="img/invited_speakers/frank_dellaert.png"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://www.cc.gatech.edu/people/frank-dellaert">Frank Dellaert</a>
      </p>
      <p style="margin-bottom: 3px;">Professor</p>
      <p>Georgia Tech</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="img/invited_speakers/MartialHebert.jpg"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="http://www.cs.cmu.edu/~hebert/">Martial Hebert</a>
      </p>
      <p style="margin-bottom: 3px;">Professor, Robotics Institute</p>
      <p>Carnegie Mellon University</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="img/invited_speakers/michaelkawss.jpg"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://www.cs.cmu.edu/~kaess/">Michael Kaess</a>
      </p>
      <p style="margin-bottom: 3px;">Associate Professor, Robotics Institute</p>
      <p>Carnegie Mellon University</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="stevenButton" class="button6" onclick="myFunction('stevenButton', 'stevenBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr id=stevenBlock style="display: none">
    <td colspan="5" style="vertical-align: middle;margin-left: 20px;">
      <p style="margin-left: 3%"><strong>Abstract: </strong></p>
      <p style="margin-left: 6%; margin-right: 3%">Gimbal-stabilized dynamic cameras provide many advantages in robotic applications governed by highly dynamic motion profiles and uneven feature distributions, due to their ability to provide smooth image capture independent of robot motion. In order to integrate information received from  gimballed cameras, an accurate time-varying extrinsic calibration between the dynamic camera and other sensors, such as static cameras and IMUs, needs to be determined. In this talk, I will first present our work on the extrinsic calibration for dynamic and static camera clusters. I will then talk about our recent efforts to perform the calibration between a dynamic camera and an IMU, online and in flight while presenting results in simulation and real hardware data.</p>
    </td>
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="/img/slam_series/cyrill.jpg"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://www.ipb.uni-bonn.de/people/cyrill-stachniss/">Cyrill Stachniss</a>
      </p>
      <p style="margin-bottom: 3px;">Professor</p>
      <p>University of Bonn</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="/img/slam_series/alia.jpg"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://aliagha.site/">Ali Agha</a>
      </p>
      <p style="margin-bottom: 3px;">Principal Investigator and Research Technologist</p>
      <p>NASA JPL</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="/img/slam_series/wolfram.jpg"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="http://www2.informatik.uni-freiburg.de/~burgard/">Wolfram Burgard</a>
      </p>
      <p style="margin-bottom: 3px;">Professor for Computer Science</p>
      <p>University of Freiburg</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="img/invited_speakers/johnleonard.jpg"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://meche.mit.edu/people/faculty/JLEONARD@MIT.EDU">John Leonard</a>
      </p>
      <p style="margin-bottom: 3px;">Professor of Mechanical and Ocean Engineering</p>
      <p>Massachusetts Institute of Technology</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="img/invited_speakers/deva_ramanan.jpg"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://www.cs.cmu.edu/~deva/">Deva Ramanan</a>
      </p>
      <p style="margin-bottom: 3px;">Professor, Robotics Institute</p>
      <p>Carnegie Mellon University</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="img/invited_speakers/dieter_fox.jpg"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://homes.cs.washington.edu/~fox/">Dieter Fox</a>
      </p>
      <p style="margin-bottom: 3px;">Professor in the Allen School of Computer Science & Engineering</p>
      <p>University of Washington</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="img/invited_speakers/tim_barfoot.jpg"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="http://asrl.utias.utoronto.ca/~tdb/">Tim Barfoot</a>
      </p>
      <p style="margin-bottom: 3px;">Professor</p>
      <p>University of Toronto</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="img/invited_speakers/marco_hutter.jpeg"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://rsl.ethz.ch/the-lab/people/person-detail.MTIxOTEx.TGlzdC8yNDQxLC0xNDI1MTk1NzM1.html">Marco Hutter</a>
      </p>
      <p style="margin-bottom: 3px;">Professor</p>
      <p>ETH Zurich</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="img/invited_speakers/andrew_davison.jpg"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://www.doc.ic.ac.uk/~ajd/">Andrew Davison</a>
      </p>
      <p style="margin-bottom: 3px;">Professor of Robot Vision</p>
      <p>Imperial College London</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="img/invited_speakers/daniel_cremers.png"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://vision.in.tum.de/members/cremers">Daniel Cremers</a>
      </p>
      <p style="margin-bottom: 3px;">Professor of Informatics and Mathematics</p>
      <p>Technical University of Munich</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="img/invited_speakers/marc_pollefeys.jpg"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://people.inf.ethz.ch/pomarc/">Marc Pollefeys</a>
      </p>
      <p style="margin-bottom: 3px;">Full Professor</p>
      <p>ETH Zurich</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="img/invited_speakers/roland_seigwart.jpeg"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://scholar.google.com/citations?user=MDIyLnwAAAAJ&hl=en">Roland Siegwart</a>
      </p>
      <p style="margin-bottom: 3px;">Professor of Robotics</p>
      <p>ETH Zurich</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="img/invited_speakers/shubham_tulsiani.jpg"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="http://shubhtuls.github.io/">Shubham Tulsiani</a>
      </p>
      <p style="margin-bottom: 3px;">Assistant Professor, Robotics Institute</p>
      <p>Carnegie Mellon University</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="img/invited_speakers/ayong_kim.jpg"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://ayoungk.github.io/">Ayoung Kim</a>
      </p>
      <p style="margin-bottom: 3px;">Associate Professor</p>
      <p>Seoul National University</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="img/invited_speakers/jongwoo_lim.jpeg"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://scholar.google.com/citations?user=x3EW4bkAAAAJ&hl=en">Jongwoo Lim</a>
      </p>
      <p style="margin-bottom: 3px;">Assistant Professor</p>
      <p>Seoul National University</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
  <tr>
    <td style="text-align: center;">
      <div class="circular_image">
        <img src="img/invited_speakers/shaojieshen.jpg"/>
      </div>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://uav.hkust.edu.hk/group/">Shaojie Shen</a>
      </p>
      <p style="margin-bottom: 3px;">Associate Professor</p>
      <p>Hong Kong University of Science and Technology</p>
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <!-- <button id="danButton" class="button6" onclick="myFunction('danButton', 'danBlock')">Expand Contents</button> -->
    </td>
    <td style="text-align: center;vertical-align: middle;">
      <p style="margin-bottom: 3px;">TBD</p>
      <p>TBD</p>
    </td>
    <td align="right;" style="vertical-align: middle;">
      <div style="position:relative;width: 100%;height: 0;padding-bottom:56.25%;">
        <div class="extensions extensions--video">
          <iframe style="width:100%;height:100%;position:absolute;" src="TODO" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    </td>  
  </tr>
</table>


## Call For Papers/Posters/Videos
We cordially invite researchers to submit short papers, extended abstracts, posters, and/or videos. We accept original papers, as well as in-review or accepted manuscripts. Submitted contributions can describe work in progress, preliminary results, novel concepts, or industrial applications.

All manuscripts are limited to 4+n pages (i.e., additional pages over 4 are ONLY allowed for references), should use the IEEE standard two-column conference format (paper template available on the IEEE ICRA 2022 website), and must be in the PDF format with size less than 20 MB. We encourage authors to submit a video for their manuscript as supplementary material. All video submissions must have the mp4 format with a size less than 100 MB.

All original submissions will be peer-reviewed. Authors who submit a paper are expected to provide (up to) 3 single-blind reviews for the papers submitted to this workshop. Submissions will be selected by workshop organizers based on the reviews, their originality, relevance to the workshop topics, contributions, technical clarity, and presentation. All accepted manuscripts will be presented as posters during the workshop, which will be displayed throughout the day. Two top contributions will be selected for 10-minute oral presentations at spotlight sessions. Accepted posters and videos will be posted on the workshop website. You can contact the corresponding organizer with any questions: Mr. Kaveh Fathian, kavehf@mit.edu.

### TOPICS OF INTEREST:
- Machine learning methods, algorithmic techniques, and their synergy for robotic perception and mapping
- Multi-agent, distributed, and/or asynchronous methods for mapping and structure from motion
- Perception-based robotic navigation and planning
- Methods based on synergetic mathematical and learned models
- Certifiable and risk-aware perception, localization, and mapping
- Filter-based estimation, statistical techniques, and uncertainty-aware methods
- Factor graphs, pose graphs, rotation/translation averaging, and graph-based optimization techniques
- Point cloud, mesh-based, and occupancy maps
- Semantic segmentation, object detection, and pose estimation
- Perception algorithms for autonomous ground, air, and underwater vehicles, bipedal robots, and industrial applications

### Submisstion Platform
To submit your contributions please follow:
​https://cmt3.research.microsoft.com/ROPM2022

You will need to create a new account if you have not used Microsoft CMT before.

### Important Dates:
**Submission Deadline:** Sunday, April 24, 2022, 8:00 PM EDT

**Reviews due:** Tuesday, May 03, 2022, 7:00 PM EDT

**Acceptance Notification:** Monday, May 9, 2022

**Camera-ready submission:** Sunday, May 15, 2022, 7:00 PM EDT

**Workshop:** Monday, May 23, 2022

**Location:** Room 119 AB, Pennsylvania Convention Center

## Organizers & Committee
<hr>
 <table class="customFormat" style="width:100%border-collapse: collapse; border: none;">
  <tr>
    <td style="text-align: center;">
      <img class="circular_image" src="img/invited_speakers/basti.jpg" style="margin-bottom: 6px;"/>
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://theairlab.org/team/sebastian/">Sebastian Scherer</a>
      </p>
      <p style="margin-bottom: 3px;">Research Associate Professor, Robotics Institute </p>
      <p>Carnegie Mellon University</p>
    </td>
    <td style="text-align: center;">
      <img class="circular_image" src="img/invited_speakers/chenwang.jpg" style="margin-bottom: 6px;"/>
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://theairlab.org/team/lucas_nogueira/">Chen Wang</a>
      </p>
      <p style="margin-bottom: 3px;">Assistant Professor, Spatial AI & Robotics Lab</p>
      <p>University at Buffalo</p>
    </td>
    <td style="text-align: center;">
      <img class="circular_image" src="img/iccv_organizers/yuhengqiu.jpeg" style="margin-bottom: 6px;"/>
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://scholar.google.com/citations?user=aEK45mEAAAAJ">Yuheng Qiu</a>
      </p>
      <p style="margin-bottom: 3px;">PhD Candidate</p>
      <p>Carnegie Mellon University</p>
    </td>
    <td style="text-align: center;">
      <img class="circular_image" src="img/iccv_organizers/wenshan_wang.jpg" style="margin-bottom: 6px;"/>
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="http://www.wangwenshan.com/">Wenshan Wang</a>
      </p>
      <p style="margin-bottom: 3px;">Project Scientist, Robotics Institute</p>
      <p>Carnegie Mellon University</p>
    </td>
  </tr>
  <tr>
   <td style="text-align: center;">
      <img class="circular_image" src="/img/team/shibozNew.png" style="margin-bottom: 6px;"/>
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://theairlab.org/team/shiboz/">Shibo Zhao</a>
      </p>
      <p style="margin-bottom: 3px;">PhD Candidate </p>
      <p>Carnegie Mellon University</p>
    </td>
    <td style="text-align: center;">
      <img class="circular_image" src="img/iccv_organizers/yi_du.jpg" style="margin-bottom: 6px;"/>
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://sairlab.org/team/yidu/">Yi Du</a>
      </p>
      <p style="margin-bottom: 3px;">Ph.D. student, Spatial AI & Robotics Lab</p>
      <p>University at Buffalo</p>
    </td> <td style="text-align: center;">
      <img class="circular_image" src="img/iccv_organizers/letizia.jpg" style="margin-bottom: 6px;"/>
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://scholar.harvard.edu/letiziagionfrida/bio">Letizia Gionfrida</a>
      </p>
      <p style="margin-bottom: 3px;">Postdoctoral Research Fellow, Biorobotics Lab</p>
      <p>Harvard University</p>
    </td>
    <td style="text-align: center;">
      <img class="circular_image" src="img/invited_speakers/ayong_kim.jpg" style="margin-bottom: 6px;"/>
      <p style="margin-bottom: 3px;">
        <a style="margin-bottom: 1px;" href="https://theairlab.org/team/lucas_nogueira/">Ayoung Kim</a>
      </p>
      <p style="margin-bottom: 3px;">Robust Perception and Mobile Robotics Lab</p>
      <p>Seoul National University</p>
    </td>
  </tr>
</table>

<script>
let calibrations;
let datasetsStr, datasets;
let datasetTable;
let chipsInput;
let options = {
    placeholder: "Filter datasets...",
    secondaryPlaceholder: "+Tag",
    autocompleteOptions: {
        data: {
            Lidar: null,
            IMU: null,
            Thermal: null,
            Subt: null,
            UAV: null,
            UGV: null,
        },
        limit: Infinity,
        minLength: 0,
    },
};

document.addEventListener("DOMContentLoaded", function () {
    let elems = document.querySelectorAll(".chips");
    M.Chips.init(elems, options);
    chipsInput = M.Chips.getInstance(elems[0]);
});

datasetTable = document.getElementById("datasetTable");
loadCalibrationCsv(() => { loadDatasetCsv(); });

function openAutoComplete() {
    setTimeout(function () {
        if (!chipsInput.autocomplete.isOpen) {
            console.log("openAutoComplete");
            chipsInput.autocomplete.open();
        }
    }, 200);
}

function onFilterButton() {
    let startTime = new Date().getTime();
    let filter = chipsInput.chipsData.map((chip) => chip.tag.toLowerCase());
    filterTable(filter);
    console.log("Filter time used: " + (new Date().getTime() - startTime) + "ms");
}

function loadCalibrationCsv(callback) {
    makeRequest("/datasets/calibrations.csv", "", (str) => {
        let rows = $.csv.toArrays(str);
        calibrations = {};
        for (let i = 0; i < rows.length; i++) {
           calibrations[rows[i][0]] = rows[i][1];
        }
        if (callback) callback();
    });
}

function loadDatasetCsv(callback) {
    makeRequest("/datasets/datasets.csv", "", (str) => {
        datasetsStr = str.split("\n");
        for (let i = 0; i < datasetsStr.length; i++) {
            datasetsStr[i] = datasetsStr[i].toLowerCase();
        }
        let rows = $.csv.toArrays(str);
        datasets = [];
        for (let i = 0; i < rows.length; i++) {
            let dataset = {};
            dataset.id = rows[i][0].trim();
            dataset.name = rows[i][1].trim();
            dataset.location = rows[i][2].trim();
            dataset.description = rows[i][3].trim();
            dataset.robot = rows[i][4].trim();
            dataset.sensors = rows[i][5].trim();
            dataset.degraded = rows[i][6].trim();
            dataset.trajectoryLength = rows[i][7].trim();
            dataset.duration = rows[i][8].trim();
            dataset.returnToOrigin = rows[i][9].trim();
            dataset.size = rows[i][10].trim();
            dataset.image =
                rows[i][11].trim() !== "" ? rows[i][11].trim() : `/datasets/img/${dataset.id}.png`;
            dataset.link = rows[i][12].trim();
            datasets.push(dataset);
        }

        datasetTable.innerHTML = "";
        for (let i = 1; i < datasets.length; i++) {
            let row = datasets[i];
            generateRow(datasetTable, i, [
                makeDownloadLink(row.name, row.link),
                row.location,
                makeRobotIDs(row.robot),
                row.sensors,
                row.description,
                row.degraded,
                makeLengthDuration(row.trajectoryLength, row.duration),
                row.returnToOrigin,
                row.size,
                makePicture(i),
            ]);
        }
        filterTable();
        if (callback) callback();
    });
}

function filterTable(filters) {
    if (filters === undefined) filters = [];
    let count = 0;
    for (let i = 1; i < datasets.length; i++) {
        let isIncluded = true;
        for (let j = 0; j < filters.length; j++) {
            if (datasetsStr[i].indexOf(filters[j]) < 0) {
                isIncluded = false;
                break;
            }
        }
        if (isIncluded) {
            document.getElementById(`row-${i}`).style.display = "";
            count++;
        } else {
            document.getElementById(`row-${i}`).style.display = "none";
        }
    }
    document.getElementById("numResultLabel").innerHTML = `(Showing ${count} datasets)`;
}

function generateRow(table, rowIdx, dataArr) {
    let row = document.createElement("tr");
    row.id = "row-" + rowIdx;
    for (let i = 0; i < dataArr.length; i++) {
        let cell = document.createElement("td");
        if (typeof dataArr[i] === "string") {
            cell.innerHTML = dataArr[i];
        } else {
            cell.appendChild(dataArr[i]);
        }
        row.appendChild(cell);
    }
    return table.appendChild(row);
}

function makeLengthDuration(length, duration) {
    return `${length} <br> (${duration})`;
}

function makePicture(idx) {
    let img = document.createElement("img");
    img.id = `picture-${idx}`;
    img.idx = idx;
    img.src = datasets[idx].image;
    img.alt = "Loading...";
    img.style.width = "178px";
    img.style.height = "100px";
    img.style.objectFit = "scale-down";
    return img;
}

function makeRobotIDs(allIds) {
    let ids = allIds.split(",");
    let result = "";
    for (let i = 0; i < ids.length; i++) {
        let id = ids[i].trim();
        if (id === "") continue;
        result += makeCalibrationLink(id);
        if (i < ids.length - 1) result += ", ";
    }
    return result;
}

function makeCalibrationLink(name) {
    if (calibrations[name] === undefined) alert("Calibration not found: " + name);
    let link = calibrations[name];
    if (link.indexOf("https://") < 0 && link.indexOf("http://") < 0) link = "https://" + link;
    let result = `<a class="tooltip" onclick="window.open('${link}','_blank')">${name}`;
    result += `<span class="tooltiptext">Download ${name} calibration</span>`;
    result += `</a>`;
    return result;
}

function makeDownloadLink(name, link) {
    if (link.indexOf("https://") < 0 && link.indexOf("http://") < 0) link = "https://" + link;
    let result = `<a class="tooltip" onclick="window.open('${link}','_blank')">${name}`;
    result += `<span class="tooltiptext">Download dataset</span>`;
    result += `</a>`;
    return result;
}

function makeDownloadButton(link) {
    if (link.indexOf("https://") < 0 && link.indexOf("http://") < 0) link = "https://" + link;
    return `<a class="waves-effect waves-light btn-small" onclick="window.open('${link}','_blank')">Download</a>`;
}

function makeRequest(url, data, callback) {
    let httpRequest = new XMLHttpRequest();
    if (!httpRequest) return false;

    function receivedResponse() {
        if (httpRequest.readyState === XMLHttpRequest.DONE) {
            if (httpRequest.status === 200) {
                console.log("RECEIVED RESPONSE: " + httpRequest.responseText);
                callback(httpRequest.responseText);
            } else {
                console.log("ERROR: Request failed");
                alert("Unable to load datasets.");
            }
        }
    }

    httpRequest.timeout = 0;
    httpRequest.onreadystatechange = receivedResponse;
    console.log("SENDING REQUEST: " + url);
    httpRequest.open("GET", url, true);
    httpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    httpRequest.send(data);
}

function myFunction(buttonID, blockName) {
    var x = document.getElementById(blockName);
    if (x.style.display === "table-row") {
      x.style.display = "none";
    } else {
      x.style.display = "table-row";
    }
    var el = document.getElementById(buttonID);
    if (el.childNodes[0].nodeValue === "Expand Contents"){
      el.childNodes[0].nodeValue = "Collapse Contents";
    } else {
      el.childNodes[0].nodeValue = "Expand Contents";
    }
  }
</script>


