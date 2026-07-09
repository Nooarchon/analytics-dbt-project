select *
from {{ source('jaffle_shop', 'JAFFLE_SHOP_ORDERS') }}
where id = 1