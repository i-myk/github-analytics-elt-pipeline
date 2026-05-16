# GitHub Analytics ELT Pipeline

## Project Overview
End-to-end GitHub analytics project built using modern data stack tools including Fivetran, BigQuery, dbt, and Looker Studio.

The project collects GitHub repository and commit activity data, transforms it using dbt, and visualizes KPIs in interactive dashboards.

---

## Architecture

GitHub API -> Fivetran -> BigQuery -> dbt -> Looker Studio

---

## Tech Stack

- GitHub API
- Fivetran
- Google BigQuery
- dbt
- Looker Studio
- SQL
- GitHub

---

## Data Pipeline

### Ingestion
GitHub data was ingested into BigQuery using Fivetran connectors.

### Transformation
dbt was used to create:
- staging models
- dimension tables
- fact tables
- rolling 7-day activity metrics

### Visualization
Looker Studio dashboards were built to monitor:
- repository activity
- commit trends
- active contributors
- daily GitHub activity

---

## dbt Models

### Staging Models
- stg_github__commit
- stg_github__repositories
- stg_github__user

### Mart Models
- dim_github__repositories
- dim_github__user
- fct_github_commit_activity
- fct_github_commit_activity_7d
- fct_daily_repo_stats
- fct_repo_activity_daily

---

## Dashboard KPIs

- Total commits
- Active contributors
- Repository activity
- Daily commit trends
- Rolling 7-day activity
- Repository engagement metrics

---

## Key Learnings

- Built an end-to-end ELT pipeline
- Implemented dimensional modeling in dbt
- Worked with cloud data warehouse architecture
- Created reusable SQL transformations
- Developed BI dashboards for analytics reporting

---

## Dashboard Screenshots

See `/dashboards` folder for dashboard previews.
