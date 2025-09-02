with daily_weather as (

select 

date(time) as daily_weather,
weather,
temp,
preasure,
humidity,
clouds

from 
{{ source('DEMO', 'WEATHER') }} 
),
daily_weather_agg as (

    select 
    daily_weather,
    weather,
    count(weather)
    from daily_weather

    group by daily_weather, weather

)


Select * from daily_weather_agg