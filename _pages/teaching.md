---
layout: archive
title: "Teaching"
description: "Courses taught by Jorge Pérez Pérez"
permalink: /teaching/
author_profile: true
---

{% include base_path %}

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

