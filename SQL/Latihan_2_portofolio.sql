------------DATA CLEANING------------
-- Data Source: https://www.kaggle.com/datasets/mikhail1681/walmart-sales 
select * from walmart_sales ws ;

-- Standardize data (format date to 'MM-DD-YYYY')
select "Date" , to_char ("Date" ::date ,'MM-DD-YYYY') as "Date new format" 
from walmart_sales ws ;

update walmart_sales 
set "Date" = to_char ("Date" ::date ,'MM-DD-YYYY') ;

-- Standardize data (format "Weekly Sales" to rounded to the nearest 2 decimal places )
select "Weekly Sales" , round("Weekly Sales"::numeric  ,2) as "Weekly Sales new format" 
from walmart_sales ws ;

update walmart_sales 
set "Weekly Sales" = round("Weekly Sales"::numeric  ,2);

-- Standardize data (format "Temperature" to rounded to the nearest whole number )
select "Temperature", round("Temperature"::numeric,0) as "Temperature new format" 
from walmart_sales ws ;

update walmart_sales 
set "Temperature" =round("Temperature"::numeric,0);

-- Standardize data (format "Fuel Price" to rounded to the nearest 2 decimal places )
select "Fuel Price" , round("Fuel Price"::numeric,2) as "Fuel Price new format"
from walmart_sales ws ;

update walmart_sales 
set "Fuel Price" =round("Fuel Price"::numeric,2);

-- Standardize data (format "CPI"" to rounded to the nearest 3 decimal places )
select "CPI", round("CPI"::numeric,3) as "CPI new format"
from walmart_sales ws ;

update walmart_sales 
set "CPI" =round("CPI"::numeric,3);

-- Standardize data (format "Unemployment"" to rounded to the nearest 3 decimal places )
select "Unemployment", round("Unemployment"::numeric,3) as " Unemployment new format"
from walmart_sales ws ;

update walmart_sales 
set "Unemployment" =round("Unemployment"::numeric,3); 

-- Ensure no missing data from all column
select * 
from walmart_sales ws 
where "Store" is null or "Date" is null or "Weekly Sales" is null or "Holiday Flag" is null or 
"Temperature" is null or "Fuel Price" is null or "CPI" is null or "Unemployment" is null;

-- Data is sorted first by store number (ascending) and second by date (ascending) 
select *
from walmart_sales ws 
order by "Store", "Date" ;

-- Bussiness Question
/*
1. Which holidays affect weekly sales the most?
2. Which stores in the dataset have the lowest and highest unemployment rate? 
   What factors do you think are impacting the unemployment rate?
3. Is there any correlation between CPI and Weekly Sales?  
   How does the correlation differ when the Holiday Flag is 0 versus when the Holiday Flag is 1?   
4. Why do you think Fuel Price is included in this dataset?  
   What conclusions can be made about Fuel Price compared to any of the other fields?
*/
-- Use Data visualization to solve the problem
