select 
results_id,
athlete_id,
event_id,
medal
from {{ ref('stg_olympics') }}