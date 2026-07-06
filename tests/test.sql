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

select *
from {{ ref('stg_jaffle_shop__orders') }}
where status = 'returned'