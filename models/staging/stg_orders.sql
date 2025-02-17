
{{ config(materialized='table') }}

WITH tb1 as(
    select 
  --primary key 
    o_orderkey as order_key,	

  --order details
    o_totalprice as order_total,
    CAST(o_orderdate AS DATE) AS order_date,

  --truncate date to month for monthly reports
     DATE_TRUNC('month', CAST(o_orderdate AS DATE)) AS order_month,

  --make statuses more readable 
    case 
        when o_orderstatus = 'O' then 'Open'
        when o_orderstatus = 'F' then 'Filled'
        when o_orderstatus = 'P' then 'Processing'
        end as order_status

<<<<<<< HEAD
    from {{source('datafeed_shared_schema','RAW_ORDER')}})
select * from tb1
=======
    from {{source('datafeed_shared_schema','raw_order')}})
select * from tb1
>>>>>>> 9898f21a2963e414081098fe3748db017b15b43e
