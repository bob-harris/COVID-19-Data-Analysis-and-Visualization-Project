--THE DATA WE WILL BE USING

select *
from covid_deaths
order by 3,4

select *
from covid_vaccinations
order by 3,4


--TOTAL CASES VS TOTAL DEATHS

select location ,date ,total_cases ,total_deaths 
from covid_deaths
order by 1,2


--LIKELYHOOD OF DYING IF CONTRACTING COVID IN SPAIN

SELECT 
    location, 
    date, 
    total_cases, 
    total_deaths, 
    (CAST(total_deaths AS REAL) / CAST(total_cases AS REAL)) * 100 AS DeathPercentage
FROM 
    covid_deaths
    WHERE location = 'Spain'
ORDER BY total_cases asc
    
    
-- PERCENTAGE OF POPULATION WITH COVID
SELECT
    location, date, population, total_cases, (CAST(total_cases  AS REAL) / population) * 100 AS PercentageOfPopulation
FROM 
    covid_deaths
ORDER BY PercentageOfPopulation desc  

-- COUNTRIES WITH HIGHEST INFECTION RATE COMPARED TO POPULATION 
SELECT 
    location, population,SUM(total_cases) as HighestInfectionCount, Max(CAST(total_cases  AS REAL) / population) * 100 AS PercentagePopulationInfected
FROM 
    covid_deaths
WHERE location NOT IN ('Upper middle income', 'Lower middle income', 'High income', 'World', 'Europe', 'North America', 'Asia', 'South America', 'European Union')
GROUP BY location, population
ORDER BY PercentagePopulationInfected desc



-- COUNTRIES WITH HIGHEST INFECTION RATE COMPARED TO POPULATION 
SELECT 
    location, population,SUM(total_cases) as HighestInfectionCount, Max(CAST(total_cases  AS REAL) / population) * 100 AS PercentagePopulationInfected
FROM 
    covid_deaths
WHERE location NOT IN ('Upper middle income', 'Lower middle income', 'High income', 'World', 'Europe', 'North America', 'Asia', 'South America', 'European Union')
GROUP BY location, population
ORDER BY HighestInfectionCount desc





-- COUNTRIES WITH HIGHEST DEATH COUNT BY POPULATION
SELECT location, MAX(CAST(total_deaths AS REAL)) as totaldeathcount
FROM covid_deaths
WHERE location NOT IN ('Upper middle income', 'Lower middle income', 'High income', 'World', 'Europe', 'North America', 'Asia', 'South America', 'European Union')
GROUP BY location 
ORDER BY totaldeathcount DESC;


-- DEATH COUNT BY CONTINENT 
SELECT 
    continent, 
    SUM(cast(total_deaths as int)) as totaldeathcount
FROM 
    covid_deaths 
GROUP BY 
    continent
ORDER BY 
    totaldeathcount DESC;

--TOTAL CASES AND THE DEAD PERCENTAGE WORLD WIDE 
select sum(new_cases) as total_cases, sum(cast(new_deaths as int)) as total_deaths, sum(CAST(new_deaths as int))/sum(new_cases)*100 as death_percentage
from covid_deaths cd 
where location is 'World'
order by 1,2



--LOOKING AT TOTAL POPULATION VS VACCINATIONS
select cd.continent, cd.location, cd.date, cd.population, cv.new_vaccinations
from covid_deaths cd
join covid_vaccinations cv 
on cd.location=cv.location and cd.date = cv.date
where cd.continent is not null
order by 2,3


--LOOKING AT TOTAL POPULATION VS VACCINATIONS
select cd.continent, cd.location, cd.date, cd.population, cv.new_vaccinations
, SUM (cast (cv.new_vaccinations as int)) over (PARTITION by cd.location order by cd.location,cd.date) as rollingpeoplevaccinated
from covid_deaths cd
join covid_vaccinations cv 
on cd.location=cv.location and cd.date = cv.date
where cd.continent is not null
order by 2,3

