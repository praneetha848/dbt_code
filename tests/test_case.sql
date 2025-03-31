select
    FIRSTNAME,
    sum(salary) as total_amount
from {{ ref('emp' )}} 
group by FIRSTNAME
having total_amount < 1

