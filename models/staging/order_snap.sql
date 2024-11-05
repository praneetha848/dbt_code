{{ config(materialized='table') }}

WITH tb1 as(
    select  ID,
    USER_ID as userid,
    ORDER_DATE,
    STATUS
    from {{ref('snap_orders_check')}} where dbt_valid_to is null)
select * from tb1

