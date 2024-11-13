{{ config(materialized='table') }}

WITH tb1 as(
    select 
    R_REGIONKEY AS REGIONKEY,
	R_NAME AS NAME,
	R_COMMENT AS COMMENT
    from {{source('datafeed_shared_schema','RAW_REGION')}})
select * from tb1