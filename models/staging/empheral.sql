{{ config(materialized='ephemeral') }}

WITH tb1 as(
    select id,
    order_date,
    user_id,
    status
    from {{ref('emp')}})
select * from tb1