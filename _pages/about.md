---
permalink: /
title: "About"
excerpt: "Jorge Pérez Pérez - Research Economist - Banco de México"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

I am a Research Economist in the Economics Research Division at [Banco de México](https://www.banxico.org.mx). I have a Ph.D. in Economics from [Brown University](https://www.brown.edu/academics/economics/), and undergraduate degrees from [Universidad del Rosario](https://www.urosario.edu.co/Facultad-de-Economia/Inicio/). My research uses elements from Urban and Labor economics to study the effects of minimum wages and other place-based policies. 

{% assign working_papers = site.research | where: "type", "working_paper" %}
{% assign publications = site.research | where: "type", "publication" %}
{% assign latest = working_papers | concat: publications | sort: "date" | reverse %}
{% assign latest_post = site.posts | first %}
<section class="home-latest">
  <h2 class="home-latest__title">Latest working papers and publications</h2>
  <ul>
    {% for paper in latest limit: 3 %}<li><a href="{{ paper.url }}">{{ paper.title }}</a></li>
    {% endfor %}
  </ul>
  <h2 class="home-latest__title">Latest blog post</h2>
  <ul>
    <li><a href="{{ latest_post.url }}">{{ latest_post.title }}</a></li>
  </ul>
  <p class="home-latest__more">See <a href="/research/">all research</a> and <a href="/year-archive/">all blog posts</a>.</p>
</section>
