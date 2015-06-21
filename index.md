---
layout: plain
---

<div class="jumbotron">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">

<h1 class="title">Data Cloning</h1>

            </div>
            <div class="col-md-10 col-md-offset-1">

<p>is a numerical optimization algorithm used to find
maximum likelihood estimates (MLEs) using 
Markov-chain Monte Carlo (MCMC) methods.</p>
<p><a class="btn btn-primary">Learn more</a></p>
            
            </div>
        </div>
    </div>
</div>

<div class="section-tout">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-sm-6">

<h3><i class="fa fa-file-o"></i> Easy to Install</h3>
<p>Simply download a CSS file and replace the one in Bootstrap. No messing around with hex values.</p>
</div>
<div class="col-lg-4 col-sm-6">
<h3><i class="fa fa-github"></i> Open Source</h3>
<p>Bootstrap themes are released under the MIT License and maintained by the community on <a target="_blank" href="https://github.com/thomaspark/bootswatch">GitHub</a>.</p>
</div>
<div class="col-lg-4 col-sm-6">
<h3><i class="fa fa-wrench"></i> Tuned for 3.3.5</h3>
<p>Themes are built for the latest version of Bootstrap. <a href="2/">Version 2</a> and <a target="_blank" href="https://github.com/thomaspark/bootswatch/tags">others</a> are also available to download.</p>
</div>
<div class="col-lg-4 col-sm-6">
<h3><i class="fa fa-cogs"></i> Modular</h3>
<p>Changes are contained in just two LESS or SASS files, enabling modification and ensuring forward compatibility.</p>
</div>
<div class="col-lg-4 col-sm-6">
<h3><i class="fa fa-cloud"></i> Get Plugged In</h3>
<p>An <a href="./help/#api">API</a> is available for integrating with your platform. In use by <a href="https://nodebb.org/" target="_blank">NodeBB</a>, <a href="http://yabdab.com/stacks/bootsnap" target="_blank">BootSnap</a>, and others.</p>
</div>
<div class="col-lg-4 col-sm-6">
<h3><i class="fa fa-bullhorn"></i> Stay Updated</h3>
<p>Be notified about updates by subscribing via <a href="http://feeds.feedburner.com/bootswatch">RSS feed</a>, <a href="http://feedburner.google.com/fb/a/mailverify?uri=bootswatch&amp;loc=en_US">email</a>, or <a href="http://news.bootswatch.com" onclick="pageTracker._link(this.href); return false;">Tumblr</a>.</p>

            </div>
        </div>
    </div>
</div>

*****************

<div class="container">
    <div class="row">
        <div class="col-lg-12">
<h2 title="news">News</h2>

        </div>
        <div class="col-md-8 col-md-offset-1"> 

{% for post in site.posts limit:5 %}
<blockquote>
<h3><a href="{{ site.url }}{{ post.url }}" title="{{ post.title }}">{{ post.title }}</a></h3>
<p><small>{{ post.date | date: "%Y-%m-%d" }}</small></p>
<p>{{ post.content | strip_html | strip_newlines | truncate: 360 }}</p>
</blockquote>
{% endfor %}

        </div>
    </div>
</div>
