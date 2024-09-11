	--QUESTION 1
SELECT brands, COUNT (quantity),
       years,
	   countries
FROM sales
WHERE countries IN ('Togo', 'Senegal', 'Benin') AND years IN (2018, 2019)
GROUP BY brands,
         years,
		 countries
ORDER BY COUNT (quantity) DESC LIMIT 3




--QUESTION 2
SELECT countries,
       brands, COUNT (quantity)
FROM sales
WHERE countries = 'Ghana'
GROUP BY countries,
         brands
ORDER BY COUNT (quantity) DESC LIMIT 2;




--QUESTION 3
SELECT *
FROM sales
WHERE countries = 'Nigeria' AND brands NOT LIKE '%malt'
GROUP BY sales_id, countries, brands, years;


--QUESTION 4
SELECT brands, 
       countries, COUNT (*),
	   years
FROM sales                                        
WHERE countries IN ('Nigeria', 'Ghana') AND brands LIKE '%malt' 
GROUP BY brands, countries, years 
HAVING years BETWEEN 2018 AND 2019
ORDER BY years DESC, countries;



--QUESTION 5
SELECT brands,
       countries,
       years   
FROM sales
WHERE countries = 'Nigeria' AND years = 2019
GROUP BY brands, years, countries
ORDER BY brands DESC;

--QUESTION 6
SELECT region,
       countries,
	   brands, MAX (profit)
FROM sales
WHERE region = 'Southsouth' AND countries = 'Nigeria'
GROUP BY region, countries, brands
ORDER BY MAX (profit) DESC
LIMIT 1;



--QUESTION 7
SELECT brands, SUM (cost),
       countries,
	   years
FROM sales
WHERE brands NOT LIKE '%malt' AND countries LIKE 'Nigeria'
GROUP BY brands, countries, years 
ORDER BY brands, SUM (COST) DESC, years;
 




--QUESTION 8
SELECT brands, 
       countries,
	   region, COUNT (quantity),
	   years
FROM sales
WHERE brands = 'budweiser' AND countries = 'Nigeria'
GROUP BY brands, countries, region, years
ORDER BY region, years DESC;


--QUESTION 9
SELECT brands, 
       countries,
	   region, COUNT (quantity),
	   years
FROM sales
WHERE brands = 'budweiser' AND countries = 'Nigeria' AND years = 2019
GROUP BY brands, countries, region, years
ORDER BY region, years DESC;