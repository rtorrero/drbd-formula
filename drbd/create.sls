{%- from "drbd/map.jinja" import drbd with context -%}

{% for res in drbd.resource %}
create-metadata-{{ res.name }}:
  drbd.initialized:
    - name: {{ res.name }}
{% endfor %}
