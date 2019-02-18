# Serverless-PractiseDB
Serverless SQLite3 DB -  using SQL, POWER BI


## Notes

- Using SQLite console, SQLite Studio, POWER BI
- No keys in schema, utilise POWER BI UI to pull together relation (can also easily do this is SQLite Studio
- Compare figures of metric from POWER BI using query results
- Using python, R to perform regression, fitting, forecasting, compare to UBA.
- Translate data analysis to scikit-learn or tensorflow (probably not the right tool to solve the problems, just for training)

## Queries

- No of user vs country
- Coupon type pie chart
- Buy/sell vs country
- Moving average of buy/sell vs global or country (est. background noise)
- [Time series analysis of buy/sell of users around campaigns for targeted countries](Registration_Count.sql)
- [Time series analysis of newly registered users "](Registration_Retention.sql)
- [Buy/sell traffic of newly registered users "](Registration_Count.sql)
Registration_Count.sql
## Data Analysis

Establish problem and useful relative data

Then establish campaign effectiveness via...

- Multiline plot 
- Drilldown multiline plot
- Area under curve relative to est. background noise
- Heatmaps
- Piecharts
- Regression
- Forecasting
- Tabulate campaigns ordered by effectiveness
