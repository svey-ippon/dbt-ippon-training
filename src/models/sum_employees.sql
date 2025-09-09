select
    sum(NB_EMPLOYEES) as total_employees
from {{ source('source','restaurants') }}
