{{ config(materialized='table') }}

WITH tb1 as(
    select
    id ,
    first_name AS FIRSTNAME,
    last_name AS LASTNAME
    from {{source('datafeed_shared_schema','raw_customerdata')}})
select * from tb1