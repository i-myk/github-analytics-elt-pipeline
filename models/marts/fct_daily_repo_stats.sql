with repositories as (
    select *
    from {{ ref('stg_github__repositories') }}
),

daily_stats as (
    select
        repository_name,
        date(created_at) as stat_date,
        coalesce(language, 'Unknown') as language,

        count(*) as repo_count,
        sum(forks) as total_forks,
        round(avg(forks), 2) as avg_forks

    from repositories
    group by 1, 2,3
)

select *
from daily_stats
order by stat_date desc
