with bike as (

    select distinct 
    start_station_id as Station_ID,
    start_station_name as Station_Name,
    start_lat,
    start_lng    
 from 
{{ source('DEMO', 'BIKE1') }}



)

select * from bike

