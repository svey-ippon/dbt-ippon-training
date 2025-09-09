select
    address,
    identifier,
    name,
    nb_employees,
    open_on_sunday
from {{ source('source','restaurants') }}
