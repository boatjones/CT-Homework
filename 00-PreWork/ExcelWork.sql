/* The initial Excel chart was ugly and the data needed more work in order to make for
   a presentable chart.  So I summed it up by year using a database.
   Since there were such large numbers, I showed the sum in millions.  As usual,
   for working with data, Excel usually needs to have the data massaged in a 
   database to get it right so that a chart doesn't look bad.  

   I pulled the CSV file into a PostgreSQL table and did the below summary
   in order to get workable data to chart.  See the *.xlsx file for result tab.

   I also did a Jupyter file of a better way to work with & display this data using Python.
*/
select distinct fiscal_year,
                sum(revenue/1000000) as revenue_sum
from cdp_financial_data
group by fiscal_year
order by fiscal_year;
