---
layout: page
title: Opportunities
permalink: /pages/opportunities.html
---

# Join Us

We are building a collaborative team to study how neuromodulation shapes hippocampal memory across sleep and wake, from in vitro synaptic plasticity to in vivo circuit dynamics and behavior.

{% assign positions = site.data.positions %}
{% if positions and positions.size > 0 %}
<div class="card-grid">
  {% for p in positions %}
  <div class="card">
    <h2>{{ p.role }}</h2>
    <p><strong>Status:</strong> {{ p.status }}</p>
    <p>{{ p.blurb }}</p>

    {% if p.requirements %}
    <h3>Requirements</h3>
    <ul>
      {% for r in p.requirements %}
      <li>{{ r }}</li>
      {% endfor %}
    </ul>
    {% endif %}

    {% if p.nice_to_have %}
    <h3>Nice to have</h3>
    <ul>
      {% for r in p.nice_to_have %}
      <li>{{ r }}</li>
      {% endfor %}
    </ul>
    {% endif %}

    {% if p.apply %}
    <h3>How to apply</h3>
    <p>Email <a href="mailto:{{ p.apply.email }}?subject={{ p.apply.subject | uri_escape }}">{{ p.apply.email }}</a>.<br/>
    {{ p.apply.instructions }}</p>
    {% endif %}
  </div>
  {% endfor %}
</div>
{% else %}
<p>No open positions right now. Please check back soon.</p>
{% endif %}

---

### Mentoring & Culture
We value rigorous, open, and supportive science. Trainees receive hands-on training across imaging, electrophysiology, behavior, and analysis.

<small>UT Southwestern is an Equal Opportunity/Affirmative Action employer.</small>
