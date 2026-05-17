# GitHub Analytics ELT Pipeline

End-to-end analytics engineering project built using GitHub data, Fivetran, BigQuery, dbt, and Looker Studio.

---

# Project Overview

This project demonstrates a modern ELT analytics workflow:

GitHub API/Data → Fivetran → BigQuery → dbt → Looker Studio

The pipeline ingests GitHub repository and commit activity data, transforms raw data into analytics-ready models using dbt, and visualizes KPIs in Looker Studio dashboards.

---

# Tech Stack

- BigQuery
- dbt
- Fivetran
- SQL
- Looker Studio
- GitHub

---

# Data Pipeline Architecture

1. Fivetran ingests GitHub data into BigQuery
2. dbt staging models clean and standardize raw data
3. dbt marts create analytics-ready fact and dimension tables
4. Looker Studio dashboards visualize repository activity and commit trends

---

# dbt Models

## Staging Models

- stg_github__commit
- stg_github__repositories
- stg_github__user

## Mart Models

- fct_github_commit_activity
- fct_github_commit_activity_7d
- fct_repo_activity_daily
- fct_daily_repo_stats
- dim_github__repositories
- dim_github__user

---

# Dashboard KPIs

- Total commits
- Active contributors
- Repository activity
- Daily commit trends
- 7-day moving average activity

---

# dbt Lineage

## Repository Activity Lineage

![Lineage](docs/fct_repo_activity_daily.sql.png)

## Commit Activity Lineage

![Lineage](docs/fct_github_commit_activity.sql.png)

---

# Dashboard Screenshots

## Dashboard Example 1

![Dashboard](dashboards/studio_looker_dashboard_1.png)

## Dashboard Example 2

![Dashboard](dashboards/studio_looker_dashboard_2.png)

---

# Key Skills Demonstrated

- ELT pipeline development
- Data modeling
- SQL transformations
- dbt development
- BigQuery analytics
- Dashboard development
- Analytics engineering
- KPI reporting
- Data warehouse concepts

---

# Future Improvements

- Add automated dbt tests
- Add CI/CD workflow with GitHub Actions
- Add incremental dbt models
- Add Airflow orchestration
