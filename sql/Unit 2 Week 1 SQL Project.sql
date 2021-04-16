
--- Unit 2 Week 1 SQL Project Jon Ismatzoda



--- 1. Which metro area in the country has the highest average household income in the US?

select metro_city, avg(median_hh_income) as avg_hh_income
from public.census_metro_data cmd
group by metro_city 
order by 2 desc 

--- Answer: Bridgeport 



--- 2. What metro area has the zip code with the largest population?

select metro_city, zip, max(population) as largest_population
from public.census_metro_data cmd 
group by 1,2
order by 3 desc 

--- Answer: Houston



--- 3. What state has the most metro areas?

select state, count(distinct metro_city) as number_of_metro_city
from public.census_metro_data cmd 
group by 1
order by 2 desc

--- Answer: California



--- 4. Which metro area has the largest proportion of people aged 70-79?

select metro_city, max(population_age_70_74) as aged_70_74, max(population_age_75_79) as aged_75_79
from public.census_metro_data cmd 
group by 1
order by 3 desc 

--- Answer: Phoenix



select *
from public.census_metro_data cmd 


