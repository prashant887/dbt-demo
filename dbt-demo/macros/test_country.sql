{% test is_usa(model,column_name) %}



select * from {{ model }} where {{ column_name }} != '{{ var("country") }}'

{% endtest %}