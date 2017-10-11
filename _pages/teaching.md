---
layout: archive
title: "Teaching"
permalink: /teaching/
author_profile: true
---

{% include base_path %}

Primary instructor
-------

{% for post in site.teaching reversed %}
	{% if post.type != '"Teaching Assistant"' %}
		{% include archive-single.html %}
	{% endif %}
{% endfor %}

Teaching Assistant
-------

{% for post in site.teaching reversed %}
	{% if post.type == '"Teaching Assistant"' %}
		{% include archive-single.html %}
	{% endif %}
{% endfor %}