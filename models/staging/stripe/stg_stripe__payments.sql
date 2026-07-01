select
    orderid as order_id,
    amount

from {{ ref('stripe_payments') }}
where status = 'success'