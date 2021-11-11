
select a.*,current_timestamp created_datetime from events a where not exists 
(select 1 from "postgres"."dbtdemo"."even_events" b where a.id=b.id)