
select * from events a where not exists 
(select 1 from "postgres"."dbtdemo"."even_events" b where a.id=b.id)