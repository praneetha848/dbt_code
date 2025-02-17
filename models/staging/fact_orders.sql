{{ config(materialized='table') }}

WITH tb1 as(
    select * from
<<<<<<< HEAD
{{source('datafeed_shared_schema','snap_ordersdetails')}} where DBT_VALID_TO is null)
select * from tb1
=======
{{ref('snap_ordersdetails')}} where DBT_VALID_TO is null)
select * from tb1
>>>>>>> 9898f21a2963e414081098fe3748db017b15b43e
