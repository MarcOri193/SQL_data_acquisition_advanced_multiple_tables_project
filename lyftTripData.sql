SELECT *
FROM trips;
SELECT *
FROM riders;
SELECT *
FROM cars;
--examining all the tables

SELECT *
FROM trips
LEFT JOIN riders
  ON trips.rider_id = riders.id;
--creating a trip log with the trips and its users

SELECT *
FROM trips
JOIN cars
  ON trips.car_id = cars.id;
--creating a lonk between the trips and the cars used during those trips

SELECT *
FROM riders
UNION
SELECT *
FROM riders2;
--stacking the riders table on top of the new riders2 table

SELECT ROUND(AVG(cost),2) AS 'AVERAGE TRIP COST'
FROM trips;
--calculating the average cost for a trip

SELECT *
FROM riders
WHERE total_trips < 500
UNION
SELECT *
FROM riders2
WHERE total_trips < 500;
--finding users that have used the service less than 500 times

SELECT COUNT(*)
FROM cars
WHERE status = 'active';
--calculating the number of cars that are active

SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;
--finding the two cars with the highest number of trips completed
