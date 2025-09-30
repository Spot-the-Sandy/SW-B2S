select
    game_id,
   game_city_id,
   city
from {{ ref('stg_olympics') }}