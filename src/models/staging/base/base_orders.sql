select distinct
    identifier,
    created_at,
    amount,
    dishes_ids,
    payment_method,
    restaurant_identifier
from {{ source('source', 'orders') }}
