{{ config(
   materialized="table",
   pre_hook="delete from {{source('datafeed_shared_schema','raw_customer')}} where id=2",
   post_hook="TRUNCATE TABLE {{ this }}"
) }}

WITH tb1 as(
   select 
    *
   from {{source('datafeed_shared_schema','raw_customer')}})
select * from tb1
