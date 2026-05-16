
with commits as (
    select *
    from {{ref('stg_github__commit')}}
),

daily_commits as (
    select
        date(committer_date) as stat_date,
        author_name,

        count(*) as commit_count

    from commits
    where author_name is not null
    group by 1, 2
)

select *
from daily_commits
order by stat_date desc
