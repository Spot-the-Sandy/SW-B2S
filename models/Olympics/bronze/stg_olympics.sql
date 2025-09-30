with 

source as (

    select * from {{ source('Olympics', 'olympics_raw') }}

),

renamed as (

    select
     ID as athlete_id, 
    NAME, 
    {{ dbt_utils.generate_surrogate_key(['name','year']) }} as athlete_stats_id,
    SEX, 
    AGE, 
    HEIGHT, 
    WEIGHT, 
    TEAM, 
    NOC, 
    GAMES,
    {{ dbt_utils.generate_surrogate_key(['GAMES','year']) }} as game_id,
    {{ dbt_utils.generate_surrogate_key(['GAMES','year','city']) }} as game_city_id,
    YEAR, 
    SEASON, 
    CITY, 
    SPORT,
    {{ dbt_utils.generate_surrogate_key(['EVENT']) }} as event_id, 
    EVENT, 
    {{ dbt_utils.generate_surrogate_key(['athlete_stats_id','event_id','year']) }} as results_id,
    MEDAL, 
    NOC_REGION, 
    NOC_NOTES 
    

    from source

)

select * from renamed
