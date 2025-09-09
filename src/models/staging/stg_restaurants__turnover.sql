select
    sum(o.amount) as amount,
    o.restaurant_identifier,
    r.name,
    r.address

from {{ ref('base_orders') }} as o
inner join {{ ref('base_restaurants')}} as r
    on o.restaurant_identifier = r.identifier
group by
    o.restaurant_identifier,
    r.name,
    r.address
