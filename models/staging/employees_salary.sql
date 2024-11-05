{{ config(
materialized='table') 
}}

with
emp_data as (
    select empid,
    firstname, 
    salary,
    tax_amount,
    ({{calculate_amount('salary','tax_amount')}}) as total_amount
    from 
    {{source('datafeed_shared_schema','raw_emp')}}
)
select * from emp_data
