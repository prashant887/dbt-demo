{% macro audits(action_name) %}

insert into dbtdemo.dbt_audit_table (action) 
	values('{{ action_name }}')

{% endmacro %}