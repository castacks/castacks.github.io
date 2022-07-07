---
title: SLAM Datasets
subtitle: Multi-Robot, Multi-Degraded SLAM Datasets
layout: page
show_sidebar: false
hide_footer: false
hero_height: is-large
hero_image: img/datasets/dataset_video_short.gif
hero_link: /datasets#download
hero_link_text: Download
---

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<style> html { scroll-behavior: smooth; } </style>

# About

![]()
<img src="/img/datasets/palette.png" style="display: block; margin-left: auto; margin-right: auto; width: 50%;" />

We present the first real-world datasets collected in Subterranean Environments includes caves, urban, and tunnels that specifically push the limits of robust SLAM. These datasets are the first Multi-Robot Datasets that include UGV, UAV, and Spot with various motions. These datasets are the first Multi-Spectral dataset that includes Visual, Lidar, Thermal, and inertial measurements in various challenging environments such as darkness, smoke, dust, and geometrically degraded environments such as a long corridor.

# Sensors

<iframe width="100%" height="400" style="display: block; margin-left: auto; margin-right: auto; width: 50%;"  src="https://www.youtube.com/embed/G8KaflyapIE?list=TLGGHuleU1VVcXswNzA3MjAyMg" title="Website - Sensor Video" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<img src="/img/datasets/specs.png" style="display: block; margin-left: auto; margin-right: auto; width: 50%;" />

# Download

<div id="chips" class="chips" onclick="openAutoComplete()">
<input class="custom-class">
</div>

<table class="">
<thead>
    <tr>
        <th>Name</th>
        <th>Item Name</th>
        <th>Item Price</th>
    </tr>
</thead>

<tbody>
    <tr>
    <td>Alvin</td>
    <td>Eclair</td>
    <td>$0.87</td>
    </tr>
    <tr>
    <td>Alan</td>
    <td>Jellybean</td>
    <td>$3.76</td>
    </tr>
    <tr>
    <td>Jonathan</td>
    <td>Lollipop</td>
    <td>$7.00</td>
    </tr>
</tbody>
</table>
    

<style>
.select-dropdown {
  height: 300px;
}

</style>
<script>
let chipsInput;
let options = {
    placeholder: 'Filter datasets...',
    secondaryPlaceholder: '+Tag',
    autocompleteOptions: {
      data: {
        'Lidar': null,
        'IMU': null,
        'Thermal': null
      },
      limit: Infinity,
      minLength: 0
    }
  };

document.addEventListener('DOMContentLoaded', function() {
    let elems = document.querySelectorAll('.chips');
    M.Chips.init(elems, options);
    chipsInput = M.Chips.getInstance(elems[0]);
});

function openAutoComplete(){
    setTimeout(function(){
        if (!chipsInput.autocomplete.isOpen) {
        console.log("openAutoComplete");
        chipsInput.autocomplete.open();
        }
    }, 200);
}

</script>
