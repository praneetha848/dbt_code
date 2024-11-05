{{ config(materialized='table') }}

WITH tb1 as(
    select id, full_name, email,phone,spent from {{ref('snap_customers_timestamp')}} where dbt_valid_to is null)
select * from tb1