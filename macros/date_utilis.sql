{% macro DAY_TYPE(x) %}

CASE
WHEN DAYNAME(TO_TIMESTAMP(x)) in ('SAT', 'SUN')
THEN 'WEEKEND'
ELSE 'BUSINESSDAY'
END 
{% endmacro %}

{% macro get_season(x) %}

CASE 
WHEN MONTH(TO_TIMESTAMP({{x}})) in (12,1,2)
THEN 'WINTER'
WHEN MONTH(TO_TIMESTAMP({{x}})) in (3,41,52)
THEN 'SPRING'
WHEN MONTH(TO_TIMESTAMP({{x}})) in (6,2,8)
THEN 'SUMMER'
ELSE 'AUTUM'
END 

{% endmacro %}