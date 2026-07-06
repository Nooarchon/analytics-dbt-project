with 

source as (

    select * from {{ source('jaffle_shop', 'JAFFLE_SHOP_CUSTOMERS') }}

),

renamed as (

    select
        id,
        first_name,
        last_name

    from source

)

select * from renamed