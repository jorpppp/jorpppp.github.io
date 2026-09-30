---
layout: archive
title: "Teaching"
description: "Courses taught by Jorge Pérez Pérez"
permalink: /teaching/
author_profile: true
---

{% include base_path %}

{% assign n_ta = site.teaching | where: "type", "TA" | size %}
{% assign n_primary = site.teaching | size | minus: n_ta %}

<nav class="section-nav">
  <a href="#primary-instructor">Primary Instructor<span class="section-nav__count">{{ n_primary }}</span></a>
  <a href="#teaching-assistant">Teaching Assistant<span class="section-nav__count">{{ n_ta }}</span></a>
</nav>

***Primary Instructor***
-------

{% for post in site.teaching reversed %}
	{% if post.type != 'TA' %}
		{% include archive-single.html %}
	{% endif %}
{% endfor %}

***Teaching Assistant***
-------

{% for post in site.teaching reversed %}
	{% if post.type == 'TA' %}
		{% include archive-single.html %}
	{% endif %}
{% endfor %}

