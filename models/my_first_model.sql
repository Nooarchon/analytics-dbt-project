select *
from {{ ref('jaffle_shop_orders') }}
limit 10
``
