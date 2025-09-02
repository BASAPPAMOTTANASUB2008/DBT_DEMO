with bike as (

    select * 
    
    from {{ source('demo', 'bike1') }}



)

select * from bike