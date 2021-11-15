
      

    insert into "postgres"."dbtdemo"."incr_load" ("id", "first_name", "last_name", "email", "gender", "ip_address", "current_timestamp")
    (
       select "id", "first_name", "last_name", "email", "gender", "ip_address", "current_timestamp"
       from "incr_load__dbt_tmp164144761562"
    );
  