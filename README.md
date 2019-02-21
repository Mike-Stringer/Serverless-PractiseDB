# Serverless-PractiseDB
Serverless SQLite3 DB -  using SQL, POWER BI


## Notes

**finished sql - clean up the database - remove chaff -new table based on 2 main time series sqls. 
Could introduce campaign = cost / time area for time series.

- Using SQLite console, SQLite Studio, POWER BI
- No keys in schema, utilise POWER BI UI to pull together relation (can also do this is SQLite Studio)
- Compare figures of metric from POWER BI using query results
- An ideal analysis would involve comparing forecast (determined from data before campaign) to data (after campaign)
- Complexity goes up once you start dealing with weekly, seasonal, quarterly, year-on-year variations. E.G weekdays vs weekends, if a     campaign starts on a Monday /vs a Friday, National holidays, academic years etc etc...
- In its crudest form ~ http://google.github.io/CausalImpact/CausalImpact.html
- Using python, R to perform regression, fitting, forecasting, compare to UBA.
- Translate data analysis to scikit-learn or tensorflow (probably not the right tool to solve the problems, just for training)

## Queries

- No of user vs country
- Coupon type pie chart
- Buy/sell vs country
- Short Moving average of buy/sell by global or country (est. background noise)
- Large Moving average of amount spent by global or country (bn)
- Short Moving average of account registrations by global or country (bn)
- Time series analysis of buy/sell of users around campaigns for targeted countries
- Time series analysis of newly registered users "
- Buy/sell traffic of newly registered users "

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
