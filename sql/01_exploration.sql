-- Q1: appartamenti interi in Terraferma, ordinati per nome
SELECT name, neighbourhood_group, room_type
FROM listings
WHERE neighbourhood_group = 'Terraferma' AND room_type = 'Entire home/apt'
ORDER BY name ASC
LIMIT 10;

-- Q2: annunci senza prezzo indicato
SELECT name, room_type, price
FROM listings
WHERE price IS NULL
LIMIT 10;

-- Q3: annunci senza recensioni nella Terraferma
SELECT name, neighbourhood_group, last_review
FROM listings
WHERE last_review IS NULL
	AND neighbourhood_group = 'Terraferma'
LIMIT 10;

-- Q4: annunci che non sono appartamenti interi
SELECT name, neighbourhood_group, room_type
FROM listings
WHERE room_type <>  'Entire home/apt '
LIMIT 10;
