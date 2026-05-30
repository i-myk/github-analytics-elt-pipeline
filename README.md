# GitHub Analytics ELT Pipeline

End-to-end analytics engineering project built using GitHub data, Fivetran, BigQuery, dbt, and Looker Studio.

---

# Project Overview

This project demonstrates a modern ELT analytics workflow:

**GitHub API/Data → Fivetran → BigQuery → dbt → Looker Studio**

The architecture follows ELT approach where GitHub data is automatically extracted by Fivetran, loaded into BigQuery, transformed using dbt, and visualized through interactive Looker Studio dashboards.

The project analyzes GitHub repository, commit, and user activity data to create analytics-ready models, track engineering KPIs, and provide insights into repository performance and contributor engagement.

## Architecture Diagram

![GitHub Analytics Architecture](docs/architecture_diagram.png)

## Data Pipeline Architecture

The project follows a modern ELT architecture:

1. GitHub serves as the source system containing repository, commit, and user activity data.
2. Fivetran automatically extracts data from GitHub and loads it into BigQuery on a scheduled basis.
3. BigQuery stores the raw source data and acts as the central data warehouse.
4. dbt transforms raw data into clean, analytics-ready models using a layered architecture.
5. Looker Studio connects to the transformed models and provides business reporting dashboards.

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

![Lineage](docs/fct_repo_activity_daily.png)

## Commit Activity Lineage

![Lineage](docs/fct_github_commit_activity.png)

---

# Dashboard Screenshots

## Dashboard Example 1

![Dashboard](dashboards/studio_looker_dashboard_1.png)

## Dashboard Example 2

![Dashboard](dashboards/studio_looker_dashboard_2.png)
## Dashboard Example 3

![Dashboard](dashboards/studio_looker_dashboard_3.png)

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


## Data Quality Tests

This project uses dbt schema tests to improve data quality and validate important business fields.

Implemented tests include:

- `unique` → validates no duplicate primary keys
- `not_null` → ensures important fields are not empty

Example validations:

- `repository_id` must be unique and not null
- `user_id` must be unique and not null
- `stat_date` cannot be null

Example dbt test configuration:

```yaml
tests:
  - unique
  - not_null
```

Run tests with:

```bash
dbt test
```
