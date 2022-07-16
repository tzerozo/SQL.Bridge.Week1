-- 07/16/2022 SQL WEEK1 

-- Q1.Which destination in the flights database is the furthest distance away, based on information in the flights table?
SELECT * FROM flights;
SELECT DISTINCT origin, dest, distance FROM flights WHERE distance = (SELECT MAX(distance) FROM flights);

-- Q2. What are the different numbers of engines in the planes table? 
-- For each number of engines, which aircraft have the most number of seats?
-- SELECT * FROM planes;
SELECT engines FROM planes GROUP BY engines;
SELECT engines, MAX(seats) FROM planes GROUP BY engines;

-- Q3. Show the total number of flights
SELECT COUNT(flight) AS 'TOTAL FLIGHTS' FROM flights;

-- Q4. Show the total number of flights by airline (carrier).
SELECT carrier, COUNT(flight) AS 'Number of flights' FROM flights GROUP BY carrier;

-- Q5. Show all of the airlines, ordered by number of flights in descending order
SELECT carrier, COUNT(flight) AS 'Number of flights' FROM flights GROUP BY carrier ORDER BY 'Number of flights' DESC;

-- Q6. Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order
SELECT carrier, COUNT(flight) AS 'Number of flights' FROM flights GROUP BY carrier ORDER BY 'Number of flights' DESC LIMIT 5;

-- Q7. Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of
-- flights in descending order.
SELECT carrier, COUNT(flight) AS 'Number of flights' FROM flights WHERE distance >=1000 GROUP BY carrier ORDER BY 'Number of flights' DESC LIMIT 5;

-- Q8. Total number of flights originated form LGA
SELECT origin, COUNT(origin) FROM flights WHERE origin = 'LGA';