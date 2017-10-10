---
layout: archive
title: "Research"
permalink: /research/
author_profile: true
---



{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

Working papers
-------

{% for post in site.research reversed %}
	{% if post.type == 'working_paper' %}
		{% include archive-single.html %}
	[% endif%}
{% endfor %}

Publications
-------

{% for post in site.research reversed %}	
	{% include archive-single.html %}
{% endfor %}


