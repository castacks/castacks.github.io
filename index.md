---
title: AirLab
subtitle: We research autonomous aerial robots
layout: page
show_sidebar: false
hide_footer: false
hero_height: is-large
hero_image: /img/mine.gif
hero_link: /research/
hero_link_text: See Our Research

hero_link2: /current-members/
hero_link_text2: See Our Team
---

# About Us
Our mission is to advance state-of-the-art aerial autonomy.

We are proud to be part of the [Robotics Institute](https://www.ri.cmu.edu/) at [Carnegie Mellon University](https://www.cmu.edu/).

# Highlights
{% assign posts = site.posts | where:"categories","highlights" %}
<div class="columns is-multiline">
    {% for post in posts %}
    <div class="column is-4-desktop is-6-tablet">
        {% include post-card.html %}
    </div>
    {% endfor %}
</div>
