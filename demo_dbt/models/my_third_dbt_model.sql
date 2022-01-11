{{ config(materialized='table') }}
{{ config(
    pre_hook="select *
from {{ ref('my_second_dbt_model') }}",
) }}

with order_data as (

    select 1 as order_no, 'Pending' as order_status, 1200 as order_price
    -- union all
    -- select null as data_no
          
)



select * from order_data
