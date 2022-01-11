
-- Use the `ref` function to select from other models

select
  data_no as payment_id,
  {{ cents_to_dollars('450') }} as dollar_price
from {{ ref('my_first_dbt_model') }}