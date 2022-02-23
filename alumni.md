---
title: Alumni
subtitle: Ordered by year of graduation
layout: default
show_sidebar: false
hide_footer: false
---

<hr>
<h1 style="font-size:35px;">Former Ph.D. Students</h1>
<br>
<div class="columns is-multiline">
{% assign sorted_person = site.team | where:"category","past_phd" | sort: "graduation_year" | reverse %}
{% for person in sorted_person %}
<div class="column is-one-fifth-desktop is-6-tablet">
  <a href="{{ person.url | prepend: site.baseurl }}">
    <div class="card">
      {% if person.image %}
      <div class="card-image">
        <figure class="image is-4by3">
          <img src="{{ person.image }}" alt="{{ person.title }}" />
        </figure>
      </div>
      {% endif %}
      <div class="card-content">
        <p class="title is-5">{{ person.title }}</p>
        <p class="subtitle is-5">{{ person.starting_year }}-{{ person.graduation_year }}</p>
        <p class="subtitle is-5">{{ person.current_status }}</p>
      </div>
    </div>
  </a>
</div>
{% endfor %}
</div>

<hr>
<h1 style="font-size:35px;">Former Master's Students</h1>
<br>
<div class="columns is-multiline">
{% assign sorted_person = site.team | where:"category","past_master" | sort: "graduation_year" | reverse %}
{% for person in sorted_person %}
<div class="column is-one-fifth-desktop is-6-tablet">
  <a href="{{ person.url | prepend: site.baseurl }}">
    <div class="card">
      {% if person.image %}
      <div class="card-image">
        <figure class="image is-4by3">
          <img src="{{ person.image }}" alt="{{ person.title }}" />
        </figure>
      </div>
      {% endif %}
      <div class="card-content">
        <p class="title is-5">{{ person.title }}</p>
        <p class="subtitle is-5">{{ person.starting_year }}-{{ person.graduation_year }}</p>
        <p class="subtitle is-5">{{ person.current_status }}</p>
      </div>
    </div>
  </a>
</div>
{% endfor %}
</div>

<hr>
<h1 style="font-size:35px;">Former Postdoctoral Fellows</h1>
<br>
<div class="columns is-multiline">
{% assign sorted_person = site.team | where:"category","past_postdoc" | sort: "graduation_year" | reverse %}
{% for person in sorted_person %}
<div class="column is-one-fifth-desktop is-6-tablet">
  <a href="{{ person.url | prepend: site.baseurl }}">
    <div class="card">
      {% if person.image %}
      <div class="card-image">
        <figure class="image is-4by3">
          <img src="{{ person.image }}" alt="{{ person.title }}" />
        </figure>
      </div>
      {% endif %}
      <div class="card-content">
        <p class="title is-5">{{ person.title }}</p>
        <p class="subtitle is-5">{{ person.starting_year }}-{{ person.graduation_year }}</p>
        <p class="subtitle is-5">{{ person.current_status }}</p>
      </div>
    </div>
  </a>
</div>
{% endfor %}
</div>
