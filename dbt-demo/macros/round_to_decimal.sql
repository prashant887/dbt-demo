
{% macro round_to_decimal(column_name, precision=2) %}
    ({{ column_name }} )::numeric(16, {{ precision }})
{% endmacro %}
