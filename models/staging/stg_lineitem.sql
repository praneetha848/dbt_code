{{ config(materialized='table') }}

WITH tb1 as(
    select 
    concat(l_orderkey, '---', l_linenumber) as line_key,
    l_orderkey as order_key,
    l_quantity as line_quantity
<<<<<<< HEAD
    from {{source('datafeed_shared_schema','RAW_LINEITEM')}})
=======
    from {{source('datafeed_shared_schema','raw_lineitem')}})
>>>>>>> 9898f21a2963e414081098fe3748db017b15b43e
select * from tb1