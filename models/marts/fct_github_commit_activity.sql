select
    repository_id,
    author_name,
    author_email,
    date(committer_date) as commit_date,
    count(*) as commit_cnt
from {{ ref('stg_github__commit') }}
group by 1, 2, 3, 4



