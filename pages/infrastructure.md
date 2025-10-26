---
layout: page
title: Infrastructure
permalink: /pages/infrastructure.html
---

# Infrastructure

High-performance systems for circuit-level dissection across preparations.

{% assign systems = site.data.infrastructure.systems %}
<div class="grid">
{% for s in systems %}
  <div class="grid-item">
    {% if s.image %}
    <div class="img-wrap">
      <img src="{{ s.image }}" alt="{{ s.name }}" />
    </div>
    {% endif %}
    <h2>{{ s.name }}</h2>
    <p>{{ s.summary }}</p>

    {% if s.highlights %}
    <h3>Highlights</h3>
    <ul>
      {% for h in s.highlights %}
      <li>{{ h }}</li>
      {% endfor %}
    </ul>
    {% endif %}

    {% if s.use_cases %}
    <h3>Use cases</h3>
    <ul>
      {% for u in s.use_cases %}
      <li>{{ u }}</li>
      {% endfor %}
    </ul>
    {% endif %}
  </div>
{% endfor %}
</div>
