{% snapshot orders_snapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key='ID',
      strategy='check',
      check_cols=['STATUS']
    )
}}

select *
from {{ source('jaffle_shop', 'JAFFLE_SHOP_ORDERS') }}

{% endsnapshot %}