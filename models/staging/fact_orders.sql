{{ config(materialized='table') }}

WITH tb1 as(
    select * from
{{source('datafeed_shared_schema','snap_ordersdetails')}} where DBT_VALID_TO is null)
select * from tb1
