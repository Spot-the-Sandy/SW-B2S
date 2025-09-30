select distinct
    athlete_id,
    name
from {{ ref('stg_olympics') }}