-- Refunds have a negative amount, so the total amount should always be >= 0.

select
    order_id,
    sum(amount) as total_amount
from {{ ref('stg_stripe__payments') }}
group by 1
having total_amount < 0