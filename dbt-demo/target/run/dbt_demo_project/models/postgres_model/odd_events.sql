

  create  table "postgres"."dbtdemo"."odd_events__dbt_tmp"
  as (
    
select * from events a where not exists 
(select 1 from "postgres"."dbtdemo"."even_events" b where a.id=b.id)
  );