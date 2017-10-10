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

{% for post in site.categories.working_papers reversed %}
	{% include archive-single.html %}
{% endfor %}

Publications
-------

{% for post in site.categories.publications reversed %}
	{% include archive-single.html %}
{% endfor %}


