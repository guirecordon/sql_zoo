--https://sqlzoo.net/wiki/SUM_and_COUNT

--World Country Profile: Aggregate Functions

--Total World Population
--1. Show the total population of the world.

SELECT SUM(population)
FROM 


--List of Continents
--2. List all the continents - just once each

SELECT DISTINCT continent FROM world


--GDP of Africa
--3. Give the total GDP of Africa

SELECT SUM(gdp) FROM world
WHERE continent = 'Africa'


--Count the big countries
--4. How many countries have an area of at least 1000000

SELECT COUNT(*) FROM world
WHERE area > 1000000


--Baltic states population
--5. What is the total population of ('Estonia', 'Latvia', 'Lithuania')

SELECT SUM(population) FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania')


--Counting the countries of each continent
--6. For each continent show the continent and number of countries

SELECT continent, COUNT(*) as number_of_countries FROM world
WHERE name IS NOT NULL
GROUP BY continent


--Counting big countries in each continent
--7. For each continent show the continent and number of countries with populations of at least 10 million

SELECT continent, COUNT(*) FROM world
WHERE population >= 10000000
GROUP BY continent


--Counting big continents
--8. List the continents that have a total population of at least 100 million.

SELECT continent FROM world
GROUP BY continent
HAVING SUM(population) >= 100000000

