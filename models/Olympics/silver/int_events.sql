select distinct
event_id,
event
from {{ ref('stg_olympics') }}