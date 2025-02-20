select
    salary
from {{ ref('emp' )}}
group by 1
having salary < 1