with CTE AS (


Select

{{get_season('date')}}AS Season,

*
from {{ source('uscrime', 'URBAN_CRIME_INCIDENT_LOG') }}
where city = 'New York'  AND  offense_category in( 'Theft','Driving Under The Influence' ) 


)

Select
Season, 
offense_category ,
count(offense_category) as No_of_Offense
from CTE  group by season, offense_category
Order by  No_of_Offense desc