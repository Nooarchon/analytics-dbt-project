with orders as (

    select *
    from {{ ref('stg_jaffle_shop__orders') }}
    where status = 'returned'

),

payments as (

    select *
    from {{ ref('stg_stripe__payments') }}
    where payment_method in ('credit_card', 'bank_transfer')

)

select
    orders.order_id,
    orders.customer_id,
    payments.amount

from orders

left join payments
    on orders.order_id = payments.order_id