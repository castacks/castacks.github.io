---
title: SLAM Datasets
subtitle: Multi-Robot, Multi-Degraded SLAM Datasets
layout: page
show_sidebar: false
hide_footer: false
hero_height: is-large
hero_image: /img/datasets/dataset_video_short.gif
hero_link: /datasets#download
hero_link_text: Download
---

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script src="http://code.jquery.com/jquery-3.3.1.slim.js"
    integrity="sha256-fNXJFIlca05BIO2Y5zh1xrShK3ME+/lYZ0j+ChxX2DA=" crossorigin="anonymous"></script>
<script src="/datasets/jquery.csv.min.js"></script>
<style> html { scroll-behavior: smooth; }

td th {
text-align: center !important;
vertical-align: middle !important;
}
</style>

# About

![]()
<img src="/img/datasets/palette.png" style="display: block; margin-left: auto; margin-right: auto; width: 50%;" />

We present the first real-world datasets collected in Subterranean Environments includes caves, urban, and tunnels that specifically push the limits of robust SLAM. These datasets are the first Multi-Robot Datasets that include UGV, UAV, and Spot with various motions. These datasets are the first Multi-Spectral dataset that includes Visual, Lidar, Thermal, and inertial measurements in various challenging environments such as darkness, smoke, dust, and geometrically degraded environments such as a long corridor.

# Sensors


<iframe width="100%" height="400" style="display: block; margin-left: auto; margin-right: auto; width: 50%;"  src="https://www.youtube.com/embed/G8KaflyapIE" title="Website - Sensor Video" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<img src="/img/datasets/specs.png" style="display: block; margin-left: auto; margin-right: auto; width: 50%;" />

# Download

<div id="chips" class="chips" onclick="openAutoComplete()">
<input class="custom-class">
</div>
<button style="" class="btn waves-effect waves-light" onclick="onFilterButton()">Filter<i class="material-icons right">filter_list</i></button>
<span id="numResultLabel" style="padding-left: 20px;"></span>
<table class="">
<thead>
    <tr>
        <th>Name</th>
        <th>Description</th>
        <th>Robot</th>
        <th>Sensors</th>
        <th>Degraded types</th>
        <th>Length</th>
        <!-- <th>Duration</th> -->
        <th>Return to origin</th>
        <th>Size</th>
        <th>Picture</th>
        <!-- <th>Download</th> -->
    </tr>
</thead>

<tbody id="datasetTable"></tbody>
</table>

<script>
let datasetsStr, datasets;
let datasetTable;
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

datasetTable = document.getElementById('datasetTable');
loadDatasetCsv()

function openAutoComplete(){
    setTimeout(function(){
        if (!chipsInput.autocomplete.isOpen) {
            console.log("openAutoComplete");
            chipsInput.autocomplete.open();
        }
    }, 200);
}

function onFilterButton(){
    let startTime = new Date().getTime();
    let filter = chipsInput.chipsData.map((chip) => chip.tag.toLowerCase());
    filterTable(filter);
    console.log("Filter time used: " + (new Date().getTime() - startTime) + "ms");
}

function loadDatasetCsv(){
    makeRequest("/datasets/datasets.csv", "", (str)=>{
        datasetsStr = str.split("\n");
        for (let i = 0; i < datasetsStr.length; i++) {
            datasetsStr[i] = datasetsStr[i].toLowerCase();
        }
        let rows = $.csv.toArrays(str);
        datasets = [];
        for (let i = 0; i < rows.length; i++) {
            let dataset = {};
            dataset.name = rows[i][2].trim();
            dataset.description = rows[i][3].trim();
            dataset.robot = rows[i][5].trim();
            dataset.sensors = rows[i][10].trim();
            dataset.degraded = rows[i][13].trim();
            dataset.trajectoryLength = rows[i][8].trim();
            dataset.duration = rows[i][7].trim();
            dataset.returnToOrigin = rows[i][9].trim();
            dataset.size = rows[i][6].trim();
            dataset.image = rows[i][12].trim() !== "" ? rows[i][12].trim() : `/datasets/img/${dataset.name}.jpg`;
            dataset.link = rows[i][4].trim();
            datasets.push(dataset);
        }

        datasetTable.innerHTML = "";
        for (let i = 1; i < datasets.length; i++) {
            let row = datasets[i];
            generateRow(datasetTable, i, [
                makeDownloadLink(row.name, row.link),
                row.description,
                row.robot,
                row.sensors,
                row.degraded,
                makeLengthDuration(row.trajectoryLength, row.duration),
                row.returnToOrigin,
                row.size,
                makePicture(i)
            ]);
        }
        filterTable();
    });
}

function filterTable(filters){
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

function makeLengthDuration(length, duration){
    return `${length} (${duration})`;
}

function makePicture(idx){
    let img = document.createElement("img");
    img.id = `picture-${idx}`;
    img.idx = idx;
    img.src = datasets[idx].image;
    img.alt = "Loading...";
    img.style.width = "178px";
    img.style.height = "100px";
    img.style.objectFit = "cover";
    return img;
}

function makeDownloadLink(name, link){
    if (link.indexOf("http://") < 0){
        link = "http://" + link;
    }
    return `<a onclick="window.open('${link}','_blank')">${name}</a>`;
}


function makeDownloadButton(link){
    if (link.indexOf("http://") < 0)
        link = "http://" + link;
    return `<a class="waves-effect waves-light btn-small" onclick="window.open('${link}','_blank')">Download</a>`;
}

function makeRequest(url, data, callback) {
    let httpRequest = new XMLHttpRequest();
    if (!httpRequest)
        return false;

    function receivedResponse() {
        if (httpRequest.readyState === XMLHttpRequest.DONE) {
            if (httpRequest.status === 200) {
                console.log("RECEIVED RESPONSE: " + httpRequest.responseText);
                callback(httpRequest.responseText);
            } else {
                console.log("ERROR: Request failed");
                alert("Unable to load datasets.")
            }
        }
    }

    httpRequest.timeout = 0
    httpRequest.onreadystatechange = receivedResponse;
    console.log("SENDING REQUEST: " + url);
    httpRequest.open("GET", url, true);
    httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    httpRequest.send(data);
}
</script>
