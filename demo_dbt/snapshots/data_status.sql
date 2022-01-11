{% snapshot data_status %}

{{
    config(
      target_database='wqgzdjha',
      target_schema='wqgzdjha',
      unique_key='data_no',

      strategy='timestamp',
      updated_at='data_status',
    )
}}


select *
from {{ ref('my_first_dbt_model') }}

{% endsnapshot %}