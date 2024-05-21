# E-Vehicles_Dashboard

This is a Data Analyst project focused on showing the spread of the Covid-19 until april 2024.

![Dashboard](/)

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
- For the purpose of this Dashboard only EVs from 2020 to 2024 were used. 

|Variable|Meaning|Units|
|:----|:----|:----|
|city08|MPGe in the city|6 - 153|
|drive|how power from the engine is distributed to the wheels of a vehicle|Rear-Wheel Drive, Front-Wheel Drive or All-Wheel Drive|
|make|car manufacturers|Acura, Audi, BMW, BYD, Cadillac, Chevrolet, Fiat, Fisker, Ford, Genesis, GMC, Honda, Hyundai, Jaguar, Kandi, Kia, Lexus, Lordstown, Lucid, Maserati, Mazda, Mercedes-Benz, MINI, Nissan, Polestar, Porsche, Rivian, Rolls-Royce, Subaru, Tesla, Toyota, Vinfast, Volkswagen, Volvo|
|model|Electric vehicles models per Brand|exp. e-tron, Q4 e-tron quattro, RS e-tron GT, Q8 Sportback e-tron ultra quattro |
|VClass|Vehicle Class|Compact Cars, Large Cars, Midsize Cars, Minicompact Cars, Small Utility Vehicle 2WD, Small Utility Vehicle 4WD, Small Station Wagons, Special Pickup Trucks 4WD, Standard Sport Utility Vehicle 4WD, Subcompact Cars|
|year|period of time|from 2020 to may 2024|

## Terms and Jargons

- WD: Wheel Drive
- MPGe: Miles per Gallon equivalent for electric vehicles
- EV-s: Electric vehicle-, s
  
## Case Requirements

Potential car buyers want to understand the environmental impact of their choice.

- 1 - The buyer is interested in knowing the top 10 best and worst environmental friendly EVs in general.
- 2 - The buyer is interested in knowing the best and worst environmental friendly EVs for each Class.
- 3 - The buyer is interested in seeing the MPGe average compared with each Brand.
- 4 - The buyer is interested in understaning the evolution of MPGe of the highest environmental EVs from each Brand during time.

## Deployment

### Tableau

- The Dashboard link is: [E-Vehicles Dashboard]()
