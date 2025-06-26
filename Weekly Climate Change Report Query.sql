-- Which cities are experiencing extreme weather events this week and what are their economic and population impact?
SELECT
	"Country",
	"City",
	"Extreme Weather Events", COUNT (*) as "Event Type",
	ROUND(AVG("Temperature"),1) AS "Average Temperature",
	SUM ("Population Exposure") AS "Total Population Exposure",
	SUM ("Economic Impact Estimate") AS "Total Economic Impact",
	ROUND (AVG("Infrastructure_Vulnerability Score"),0) AS "Average Vulnerability"
FROM "Climate Change"."Combined data"
WHERE "Date" BETWEEN '2025-03-03' and '2025-03-07'
AND "Extreme Weather Events"!='None'
GROUP BY "Country", "City", "Extreme Weather Events"
ORDER BY "Total Economic Impact" ASC;