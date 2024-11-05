{{ config(materialized='table') }}

WITH tb1 as(
    select * from {{ref('snap_customers_timestamp2')}} where dbt_valid_to is null)
select * from tb1