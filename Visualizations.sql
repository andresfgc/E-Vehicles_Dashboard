--Top 10 models
WITH RankedVehicles AS (
    SELECT 
        make, 
        model, 
        drive, 
        trany, 
        VClass, 
        year, 
        city08,
        ROW_NUMBER() OVER (PARTITION BY model ORDER BY city08 DESC) AS rn
    FROM PortfolioEV..eVehicles
)
SELECT 
    make, 
    model, 
    drive, 
    trany, 
    VClass, 
    year, 
    city08
FROM RankedVehicles
WHERE rn = 1
ORDER BY city08 DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

--Top 10 models (including same models in previous years)
SELECT TOP 10 make, model, drive, trany, VClass, year, city08
FROM PortfolioEV..eVehicles
ORDER BY city08 DESC

--Worst 10 models
WITH RankedVehicles AS (
    SELECT 
        make, 
        model, 
        drive, 
        trany, 
        VClass, 
        year, 
        city08,
        ROW_NUMBER() OVER (PARTITION BY model ORDER BY city08 ASC) AS rn
    FROM PortfolioEV..eVehicles
)
SELECT 
    make, 
    model, 
    drive, 
    trany, 
    VClass, 
    year, 
    city08
FROM RankedVehicles
WHERE rn = 1
ORDER BY city08 ASC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

--Worst 10 models (including same models in previous years)
SELECT TOP 10 make, model, drive, trany, VClass, year, city08
FROM PortfolioEV..eVehicles
ORDER BY city08 ASC

--Brand Average MPGe all
WITH RankedVehicles AS (
    SELECT 
        make,  
        city08,
        ROW_NUMBER() OVER (PARTITION BY make ORDER BY city08 DESC) AS rn
    FROM PortfolioEV..eVehicles
)
, AvgCity08_all AS (
    SELECT AVG(city08) AS avg_city08_all
    FROM PortfolioEV..eVehicles
)
SELECT 
    RV.make,
    AvgMake.avg_city08,
	AC.avg_city08_all
FROM RankedVehicles RV
CROSS JOIN avgCity08_all AC
CROSS APPLY (
    SELECT AVG(city08) AS avg_city08
    FROM PortfolioEV..eVehicles EV
    WHERE EV.make = RV.make
) AvgMake
WHERE RV.rn = 1
ORDER BY AvgMake.avg_city08 DESC

--Best Cars per VClass
WITH RankedVehicles AS (
    SELECT 
        make, 
        model, 
        drive, 
        trany, 
        VClass, 
        year, 
        city08,
        ROW_NUMBER() OVER (PARTITION BY VClass ORDER BY city08 DESC) AS rn
    FROM PortfolioEV..eVehicles
),
AvgCity08ByVClass AS (
    SELECT 
        VClass, 
        AVG(city08) AS avg_city_vclass
    FROM PortfolioEV..eVehicles
    GROUP BY VClass
)
SELECT
	RV.VClass,
    RV.make, 
    RV.model, 
    RV.drive, 
    RV.trany,  
    RV.year, 
    RV.city08,
	AC.avg_city_vclass
FROM RankedVehicles RV
JOIN AvgCity08ByVClass AC ON RV.VClass = AC.VCLass
WHERE rn = 1;

--Worst Cars per VClass
WITH RankedVehicles AS (
    SELECT 
        make, 
        model, 
        drive, 
        trany, 
        VClass, 
        year, 
        city08,
        ROW_NUMBER() OVER (PARTITION BY VClass ORDER BY city08 ASC) AS rn
    FROM PortfolioEV..eVehicles
),
AvgCity08ByVClass AS (
    SELECT 
        VClass, 
        AVG(city08) AS avg_city_vclass
    FROM PortfolioEV..eVehicles
    GROUP BY VClass
)
SELECT
	RV.VClass,
    RV.make, 
    RV.model, 
    RV.drive, 
    RV.trany,  
    RV.year, 
    RV.city08,
	AC.avg_city_vclass
FROM RankedVehicles RV
JOIN AvgCity08ByVClass AC ON RV.VClass = AC.VCLass
WHERE rn = 1;

--Evolution of highest environmental cars per Brand
WITH RankedVehicles AS (
    SELECT 
        make, 
        model, 
        year, 
        city08,
        ROW_NUMBER() OVER (PARTITION BY make, year ORDER BY city08 DESC) AS rn
    FROM PortfolioEV..eVehicles
)
SELECT 
    make,
    model,
    year,
    city08
FROM RankedVehicles
WHERE rn = 1;