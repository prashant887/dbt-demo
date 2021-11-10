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

 dbt run --models modle name --no-version-check
 
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

### State Method
dbt compile , create manist file in target dir

dbt ls -model state:modified --state <patb_to_other_amifast>

## Packages
--> to be done 

## Invocation ID 
its unique Unique Ids , uqiue for all models per run 

## Compile
dbt compile  --no-version-check 

## Incremental Run
dbt run --models postgres_model --full-refresh --no-version-check

## generate custom schema name 
override macro generate_schema_name.sql to define target schema , default schema is defined in ~/.dbt/profiles.yml  , to define target schema name for dir under model define in it dbt_projects.yml 
You can use custom schemas in dbt to build models in a schema other than your target schema. It's important to note that by default, dbt will generate the schema name for a model by concatenating the custom schema to the target schema, as in: <target_schema>_<custom_schema>;.

## vars 
These are declared in dbt_projects , used as a constant variables 

dbt run --models postgres_model --no-version-check --vars '{"country":"IND"}'

## Aliases 
To have object name different from file name , but for ref{{}} use filename

## Tests
# Generic Test 
Generic tests to check table is empty , null checks
create macro in macro directory  
# Data Test 
Specific to certaian model,table like sum of order amounts 
create .sql in tests dir 

dbt test --models postgres_model --no-version-check --store-failures

## Freshness 

dbt source freshness