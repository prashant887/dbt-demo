{% snapshot orders_snapshot_timestamp %}

  {{
        config(
          strategy='timestamp',
          unique_key='id',
          updated_at='updated_ts',
          target_schema='dbtdemo',
          invalidate_hard_deletes=True,
        pre_hook=audits('SNAPSHOT','STARTED','ORDERS_SNAPSHOT_TIMESTAMP'),
    post_hook=audits('SNAPSHOT','ENDED','ORDERS_SNAPSHOT_TIMESTAMP')
        )
    }} 

    select * from {{ source('public_data', 'order_status') }}

{% endsnapshot %}