
 select *,current_timestamp as created_ts from events where mod(id,2)=0