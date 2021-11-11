

  create  table "postgres"."dbtdemo"."model_alias__dbt_tmp"
  as (
    
 select *,current_timestamp as created_ts from events where mod(id,2)=0
  );