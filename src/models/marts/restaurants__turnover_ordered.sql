select
    rank() over (order by amount desc) as rank,
    *
from {{  ref('stg_restaurants__turnover')  }}
order by amount desc
