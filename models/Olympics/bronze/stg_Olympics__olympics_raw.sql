with 

source as (

    select * from {{ source('Olympics', 'olympics_raw') }}

),

renamed as (

    select
     ID, 
    NAME, 
    SEX, 
    AGE, 
    HEIGHT, 
    WEIGHT, 
    TEAM, 
    NOC, 
    GAMES,
    YEAR, 
    SEASON, 
    CITY, 
    SPORT, 
    EVENT, 
    MEDAL, 
    NOC_REGION, 
    NOC_NOTES 
    

    from source

)

select * from renamed
