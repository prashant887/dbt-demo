# dbt-demo
This is dbt (Data Build Tool) ETL tool

 dbt debug --> to check the connectivity

 dbt run --> run project

 under models dir create a new dir and create schema.yml , which will have source details like db,schema and tables 
 then a sql/model file and define query to be executed 
 under targert/compiled and run compiled version of .sql will be avilable

 in dbt_project.yaml under models define schema where changes needs to be applied 
 schema infered is DEFAULT Schema(Public)+mentioned_schema(SALES_SCHEMA) so new schema PUBLIC_SALES_SCHEMA is created , to get over this modify a macro generate_schema_name , delete {{ custom_schema }}