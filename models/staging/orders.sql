{{ config(
    materialized="table",
    
) }}

select * from {{source('datafeed_shared_schema','raw_order')}} 