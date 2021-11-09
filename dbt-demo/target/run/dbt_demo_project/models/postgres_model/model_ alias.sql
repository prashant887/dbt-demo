

  create  table "postgres"."dbtdemo"."model_ alias__dbt_tmp"
  as (
    
 select * from events where mod(id,2)=0
  );