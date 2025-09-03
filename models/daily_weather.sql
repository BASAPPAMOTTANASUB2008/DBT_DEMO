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
    count(weather) as weather_count,
    row_number() over (partition BY daily_weather order by count(weather) desc ) as rownum
    from daily_weather

    group by daily_weather, weather

    qualify  row_number() over (partition BY daily_weather order by count(weather) desc ) =1

)


Select * from daily_weather_agg  