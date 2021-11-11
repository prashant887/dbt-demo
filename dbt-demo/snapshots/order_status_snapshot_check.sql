{% snapshot orders_snapshot_check %}

  {{
        config(
          strategy='check',
          unique_key='id',
          check_cols=['status', 'payment'],
          target_schema='dbtdemo'
       ,
        pre_hook=audits('SNAPSHOT','STARTED','ORDERS_SNAPSHOT_CHECK'),
    post_hook=audits('SNAPSHOT','ENDED','ORDERS_SNAPSHOT_CHECK')
        )
    }} 

    select * from {{ source('public_data', 'order_status') }}

{% endsnapshot %}