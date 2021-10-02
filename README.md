# dbt-demo
This is dbt (Data Build Tool) ETL tool

 dbt debug --> to check the connectivity

 dbt run --> run project

 under models dir create a new dir and create schema.yml , which will have source details like db,schema and tables 
 then a sql/model file and define query to be executed 
 under targert/compiled and run compiled version of .sql will be avilable

 in dbt_project.yaml under models define schema where changes needs to be applied 
 schema infered is DEFAULT Schema(Public)+mentioned_schema(SALES_SCHEMA) so new schema PUBLIC_SALES_SCHEMA is created , to get over this modify a macro generate_schema_name , delete {{ custom_schema }}

 Tests --> Tests are defined in schema.yaml under models/tables
 dbt test

 Packages--> Standalone DBT project , add project.yaml,dbt-hub   dbt deps to install packages , dbt_modules

 dbt docs -> turning models to website , dbt docs generate  , dbt docs server

 dbt docs generate --no-version-check
 /dbt-demo/dbt-demo/target/catalog.json

 Seeds -> external csv files for static data,reference file
 by defalt looks at data-path from dbt_projects.yml
 dbt seed ( --no-version-check) --> to load the seed file to project,creates a table in default schema
 to specify schema and seed property ,seed block to be created in dbt_project.yml

 dbt run --models modle name
 
### Custom Tests 
Tests are macros to define test need  to create macro test_<test_name>

dbt test -m example --no-version-check --store-failures --> store results

### Constant Variables 
in project.yaml add vars , while dbt run --vars key:val

### Hooks
configs in dbt_porject.yml
hooks are used for auid purpose , on-start , on-end  
under models pre hook , post hook
macros:

### Docs
Create md file in model folder and use jinja templates
dbt docs generate --no-version-check 
create doc dir in model

### Freshness
code added to block or tbl,check for freshness
create dir source under models 
dbt source snapshot-freshness
filter is used to look for records matching filter