select
    game_id,
    event_id,
    athlete_id,
    games,
    year,
    season,
    sport
from {{ ref('stg_olympics') }}