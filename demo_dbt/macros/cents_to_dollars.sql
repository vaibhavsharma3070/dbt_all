{% macro cents_to_dollars(column_name, precision=2) %}
    ({{ column_name }} / 100)::numeric(16, {{ precision }})
    {% do log("Privileges granted", info=True) %}
{% endmacro %}
