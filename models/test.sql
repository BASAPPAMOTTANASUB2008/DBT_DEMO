
select 
* 
from {{ source('DEMO', 'BIKE1') }} 

limit 10
