with trips as (

    select  
    ride_id,
    rideable_type,
    date(to_timestamp(started_at)) AS trip_date,
    start_station_id,
    member_casual,
    timestampdiff(second,to_timestamp(started_at), to_timestamp(ended_at))  as trip_duration_seconds

  
 from 
{{ source('DEMO', 'BIKE1') }}
  

)

Select * from trips