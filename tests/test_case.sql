select
    FIRSTNAME,
    sum(salary) as total_amount
from {{ ref('raw_emp' )}} 
group by FIRSTNAME
having total_amount < 0

