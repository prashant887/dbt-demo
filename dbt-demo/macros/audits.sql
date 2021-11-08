{% macro audits(status,model,sub_model) %}

insert into dbtdemo.dbt_audit_table (status,model,sub_model,invocation_id)  values('{{ status }}','{{ model }}','{{ sub_model }}','{{invocation_id}}');
    commit;

{% endmacro %}