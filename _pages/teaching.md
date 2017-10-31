---
layout: archive
title: "Teaching"
permalink: /teaching/
author_profile: true
---

{% include base_path %}

[Teaching Evaluations](files/te.pdf)

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

