SELECT * 
FROM salesdata;

-- FILTERING USING WHERE STATEMENT

-- all orders from East Region
SELECT *
FROM salesdata
WHERE Region= "East";

-- all orders for Furniture Category
SELECT *
FROM salesdata
WHERE Category= "Furniture";

-- High value sales (above 500)
SELECT *
FROM salesdata
WHERE Sales >=500;

-- SORTING DATA USING ORDER BY

-- Highest Sales first
SELECT *
FROM salesdata
ORDER BY Sales DESC;

-- Most profitable orders
SELECT *
FROM salesdata
ORDER BY Profit DESC;

-- Highest Sales from Texas
SELECT *
FROM salesdata
WHERE State= "Texas"
ORDER BY Sales DESC;

-- Most profitable cities
SELECT City, Profit
FROM salesdata
ORDER BY Profit DESC
LIMIT 5;

-- 