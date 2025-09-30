select
    athlete_id,
    event_id,
    athlete_stats_id,
    sex,
    height,
    weight,
    NOC,
    team
    from {{ ref('stg_olympics') }}
