with orders as (

    select *
    from {{ ref('stg_jaffle_shop__orders') }}

),

payments as (

    select *
    from {{ ref('stg_stripe__payments') }}

)

select
    orders.order_id,
    orders.customer_id,
    payments.amount

from orders

left join payments
    on orders.order_id = payments.order_id