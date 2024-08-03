SELECT * FROM [LUX Academy Weather Dataset].[dbo].[1. Weather Data] NOLOCK;
--Instances where the weather is clear and the 
--relative humidity is greater than 50, or visibility is above 40.
SELECT Weather, 
       CAST([Rel Hum_%] AS FLOAT) AS Relative_Humidity, 
       CAST(Visibility_km AS FLOAT) AS Visibility
FROM [LUX Academy Weather Dataset].[dbo].[1. Weather Data]
WHERE Weather = 'Clear' 
  AND CAST([Rel Hum_%] AS FLOAT) > 50 
  OR CAST(Visibility_km AS FLOAT) > 40;


--Number of weather conditions that include snow.
SELECT COUNT(*) AS SnowyDaysCount
FROM [LUX Academy Weather Dataset].[dbo].[1. Weather Data]
WHERE Weather LIKE '%snow%';

--Number of records where the wind speed is 
--greater than 24 km/hr and visibility is equal to 25 km.
SELECT COUNT(*) AS TotalRecords
FROM [LUX Academy Weather Dataset].[dbo].[1. Weather Data]
WHERE CAST([Wind Speed_km h] AS FLOAT) > 24 
AND CAST([Visibility_km] AS FLOAT) = 25;


-- Records where the weather was exactly clear.
SELECT [Date Time],[Temp_C],[Dew Point Temp_C],[Rel Hum_%],[Wind Speed_km h],
[Visibility_km],[Press_kPa],Weather
FROM [LUX Academy Weather Dataset].[dbo].[1. Weather Data]
WHERE Weather = 'Clear'


