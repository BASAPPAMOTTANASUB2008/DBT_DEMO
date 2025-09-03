with CTE as(

    Select 
    t.*,
    w.*
    from {{ ref('trip_fact') }} t
        left join {{ref('daily_weather')}} w
   on t.trip_date = w.daily_weather

) 

Select * from CTE