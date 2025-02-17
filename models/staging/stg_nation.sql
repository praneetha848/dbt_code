{{ config(materialized='table') }}

WITH tb1 as(
    select 
    n_nationkey as nation_key,
    --this lookup table is only used for customers  
    n_name as customer_nation
    
<<<<<<< HEAD
    from {{source('datafeed_shared_schema','RAW_NATION')}})
=======
    from {{source('datafeed_shared_schema','raw_nation')}})
>>>>>>> 9898f21a2963e414081098fe3748db017b15b43e
select * from tb1