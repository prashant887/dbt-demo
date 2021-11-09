

     select *,current_timestamp from events
     
       where id >= (select max(id) from "postgres"."dbtdemo"."incr_load")
     