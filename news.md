---
title: Latest News
layout: page
show_sidebar: false
hide_footer: false
---


<!-- <center>
<a class="twitter-timeline" data-width="600" data-height="1500" href="https://twitter.com/AirLabCMU?ref_src=twsrc%5Etfw">Tweets by AirLabCMU</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script> 
</center> -->

<h1><a href="https://medium.com/airlabcmu">Medium Posts</a></h1>

<div class="columns is-multiline">

{% for e in site.medium_posts_json %}

<div class="column is-3-desktop is-6-tablet">
<a href="{{ e.link | absolute_url }}">
<div class="card" style="height: 100%; display: flex; flex-direction: column; align-items: center;">
    {% if e.image %}
        <div style="height: 200px;">
            <img src="{{ e.image | absolute_url }}" alt="{{ e.title }}" style="object-fit: contain; height: 100%;">
        </div>
    {% else %}
    <header class="card-header">
        <div class="card-header-title">{{ e.title}}</div>
    </header>
    {% endif %}
    <div class="card-content" style="flex-grow: 3;">
        <div class="content">
            {% if e.image %}
            <div class="title is-5">{{ e.title}}</div>
            {% endif %}
            <p>{{ e.description | strip_html | strip_newlines | truncate: 100 }}</p>
        </div>
    </div>
    <footer class="card-footer">
        <p class="card-footer-item">Published: {{ e.date | date: "%b %-d, %Y" }}</p>
    </footer>
</div>
</a>


    </div>
  {% endfor %}
  </div>