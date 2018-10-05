<header class="post-header">

<{% if theme.seo %}h2{% else %}h1{% endif %} class="post-title" itemprop="name headline">{{ page.title }}</{% if theme.seo %}h2{% else %}h1{% endif %}>

<div class="post-meta">
  {% if page.description %}
    <div class="post-description">{{ page.description }}</div>
  {% endif %}
  {% include 'breadcrumb.swig' %}
</div>
            {% if page.toc_number === undefined %}
              {% set toc = toc(page.content, { "class": "nav", list_number: theme.toc.number }) %}
            {% else %}
              {% set toc = toc(page.content, { "class": "nav", list_number: page.toc_number }) %}
            {% endif %}


<nav aria-labelledby="toc">
<h2 id="toc">{{ __('sidebar.toc') }}</h2>
{{toc }}
</nav>
</header>
