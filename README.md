# E-Vehicles_Dashboard

This is a Data Analyst project focused on showing Miles per Gallon equivalent for electric vehicles until may 2024.

The US Environmental Protection Agency (EPA) estimates an average CO2 emissions per mile for an electric car charged from US electricity mix to be around 100 grams of CO2 per mile and the US Energy Information Administration (EIA) estimates a CO2 emission per gallon of gasoline to be around 8.89kg per gallon. From this we can conclude: The higher the MPGe, the less CO2 per mile is produced.

Example:
CO2 emissions per mile = (8.89kg/gallon) x (1/153MPGe) = 0.058kg/mile, meaning that an electric car with capacity of 153MPGe produces an average of 58grams of CO2 per mile.



![Dashboard](/Dashboard_e-vehicles.jpg)

## Table of Contents

- [E-Vehicles Dashboard](#e-vehicles-dashboard)
  - [Table of Contents](#table-of-contents)
  - [Dataset Content](#dataset-content)
  - [Terms and Jargons](#terms-and-jargons)
  - [Case Requirements](#case-requirements)
  - [Deployment](#deployment)
    - [Tableau](#tableau)

## Dataset Content

- The dataset is sourced from [fueleconomy.gov](https://www.fueleconomy.gov/feg/ws/index.shtml#ft11).
- The dataset has almost 48 thousand rows and represents vehicles records (City08, drive, make, model, VClass, year) and its respective values are from 1985 to May 2024.
- The dataset was cleaned to take only electric vehicles into consideration. It was filtered by year from 2020 to May 2024 for case requirements 1, 2 & 3 and from 1985 until now for case requirement 4.

|Variable|Meaning|Units|
|:----|:----|:----|
|city08 (MPGe)|MPGe in the city|6 - 153|
|drive|how power from the engine is distributed to the wheels of a vehicle|Rear-Wheel Drive, Front-Wheel Drive or All-Wheel Drive|
|make (Mfr)|car manufacturers|Acura, Audi, BMW, BYD, Cadillac, Chevrolet, Fiat, Fisker, Ford, Genesis, GMC, Honda, Hyundai, Jaguar, Kandi, Kia, Lexus, Lordstown, Lucid, Maserati, Mazda, Mercedes-Benz, MINI, Nissan, Polestar, Porsche, Rivian, Rolls-Royce, Subaru, Tesla, Toyota, Vinfast, Volkswagen, Volvo|
|model|Electric vehicles models per Brand|exp. e-tron, Q4 e-tron quattro, RS e-tron GT, Q8 Sportback e-tron ultra quattro |
|VClass (Vehicle Class)|Vehicle Class|Compact Cars, Large Cars, Midsize Cars, Minicompact Cars, Small Utility Vehicle 2WD, Small Utility Vehicle 4WD, Small Station Wagons, Special Pickup Trucks 4WD, Standard Sport Utility Vehicle 4WD, Subcompact Cars|
|year|period of time|from 2020 to may 2024|

## Terms and Jargons

- WD: Wheel Drive
- MPGe: Miles per Gallon equivalent for electric vehicles
- EV-s: Electric vehicle-, s
- Mfr: Manufacturer
  
## Case Requirements

Potential car buyers want to understand the environmental impact of their choice.

- 1 - The buyer is interested in knowing the top 10 best and worst environmental friendly EVs from 2020 until now.
- 2 - The buyer is interested in knowing the best and worst environmental friendly EVs for each from 2020 until now.
- 3 - The buyer is interested in seeing the MPGe average compared with each Brand from 2020 until now.
- 4 - The buyer is interested in understaning the evolution of MPGe (maximum offered) from each Brand during time.

## Deployment

### Tableau

- The Dashboard link is: [E-Vehicles Dashboard](https://public.tableau.com/app/profile/andres.garcia3623/viz/EnvironmentalImpactofE-VehiclesmeasuredonMPGe/Dashboard1)
