---
layout: archive
title: "Research"
description: "Research by Jorge Pérez Pérez"
permalink: /research/
author_profile: true
---

{% if site.author.googlescholar %}
  You can also find my articles on <u><a href="{{ site.author.googlescholar }}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

[comment]: <> To include rs use (<u><a href="/files/rs.pdf">Research Statement</a></u>)

{% assign n_publication = site.research | where: "type", "publication" | size %}
{% assign n_other = site.research | where: "type", "other" | size %}
{% assign n_working_paper = site.research | where: "type", "working_paper" | size %}
{% assign n_work_in_progress = site.research | where: "type", "work_in_progress" | size %}

<nav class="section-nav">
  <a href="#journal-articles-and-book-chapters">Journal Articles and Book Chapters<span class="section-nav__count">{{ n_publication }}</span></a>
  <a href="#policy-briefs-and-datasets">Policy Briefs and Datasets<span class="section-nav__count">{{ n_other }}</span></a>
  <a href="#working-papers">Working Papers<span class="section-nav__count">{{ n_working_paper }}</span></a>
  <a href="#work-in-progress">Work in Progress<span class="section-nav__count">{{ n_work_in_progress }}</span></a>
  <a href="#software">Software<span class="section-nav__count">{{ site.data.software | size }}</span></a>
</nav>


***Journal Articles and Book Chapters***
-------

{% for post in site.research reversed %}	
	{% if post.type == 'publication' %}
		{% include archive-single.html %}
	{% endif%}
{% endfor %}

***Policy Briefs and Datasets***
-------

{% for post in site.research reversed %}	
	{% if post.type == 'other' %}
		{% include archive-single.html %}
	{% endif%}
{% endfor %}


***Working Papers***
-------

{% for post in site.research reversed %}
	{% if post.type == 'working_paper' %}
		{% include archive-single.html %}
	{% endif%}
{% endfor %}

***Work in Progress***
-------

{% for post in site.research reversed %}
	{% if post.type == 'work_in_progress' %}
		{% include archive-single.html %}
	{% endif%}
{% endfor %}

***Software***
-------

{% for module in site.data.software %}
{% include software-single.html module=module %}
{% endfor %}





