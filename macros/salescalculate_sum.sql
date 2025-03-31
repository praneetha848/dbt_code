{% macro salescalculate_sum(column) %}
    SUM({{ column }})
{% endmacro %}