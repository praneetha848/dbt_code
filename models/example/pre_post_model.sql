{{ config(
materialized="table",
pre_hook="TRUNCATE TABLE {{ this }}",
) }}

WITH tb1 as(
select 
 *
 from {{source('datafeed_shared_schema','raw_payments')}})
select * from tb1


