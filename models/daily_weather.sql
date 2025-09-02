with daily_weather as (

select * 

from 
{{ source('DEMO', 'WEATHER') }}


)

Select * from daily_weather