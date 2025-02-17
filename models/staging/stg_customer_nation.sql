{{ config(materialized='table') }}

WITH tb1 as(
    select

C_CUSTKEY AS CUSTKEY,
C_NAME	AS NAME,
C_ADDRESS AS ADDRESS,
C_NATIONKEY	AS NATIONKEY,
C_PHONE	AS PHONE,
C_ACCTBAL AS ACCTBAL  ,
C_MKTSEGMENT AS MKTSEGMENT	,
C_COMMENT AS COMMENT
S_SUPPKEY AS SUPPKEY ,
S_NAME	AS NAME,
S_ADDRESS AS ADDRESS,
S_NATIONKEY	AS NATIONKEY,
S_PHONE	AS PHONE,
S_ACCTBAL AS ACCTBAL,
S_COMMENT AS COMMENT
from {{source('datafeed_shared_schema','RAW_CUSTOMER_NATION')}})
select * from tb1