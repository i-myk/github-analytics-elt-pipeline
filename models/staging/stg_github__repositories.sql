with source AS
(select * from {{ source('github_data', 'repository')}}
),
cleaned AS (
    SELECT
        -- Primary key
        id AS repository_id,
        
        -- Attributes
        name AS repository_name,
        full_name,
        owner_id, 
        description,
        language,
        
        -- Metrics
        forks_count AS forks,
        
        -- Dates
        created_at
    FROM source
    WHERE id IS NOT NULL
)
select * from cleaned

