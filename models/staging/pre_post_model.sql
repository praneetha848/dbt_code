{{ config(
     materialized="table",
     pre_hook="TRUNCATE TABLE {{ this }}",
     post_hook="TRUNCATE TABLE {{ref('employees_salary')}}"
     
) }}

WITH tb1 as(
   select * from {{ref('employees_salary')}})
select * from tb1