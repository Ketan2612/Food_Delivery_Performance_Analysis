CREATE DATABASE food_delivery;
USE food_delivery;

SELECT * FROM delivery_data
LIMIT 10;

# Total Orders
SELECT COUNT(*) AS total_orders
FROM delivery_data;

# Average Delivery Time
SELECT AVG(TARGET) AS avg_delivery_time
FROM delivery_data;

# Orders by Traffic Level
SELECT Traffic_Level,
COUNT(*) AS total_orders
FROM delivery_data
GROUP BY Traffic_Level
ORDER BY total_orders DESC;

# Average Delivery Time by Traffic
SELECT Traffic_Level,
AVG(TARGET) AS avg_delivery_time
FROM delivery_data
GROUP BY Traffic_Level
ORDER BY avg_delivery_time DESC;

# Fastest Vehicle Type
SELECT Type_of_vehicle,
AVG(TARGET) AS avg_delivery_time
FROM delivery_data
GROUP BY Type_of_vehicle
ORDER BY avg_delivery_time;

# Most Popular Order Type
SELECT Type_of_order,
COUNT(*) AS total_orders
FROM delivery_data
GROUP BY Type_of_order
ORDER BY total_orders DESC;

# Weather Impact on Delivery
SELECT weather_description,
ROUND(AVG(TARGET),2) AS avg_delivery_time
FROM delivery_data
GROUP BY weather_description
ORDER BY avg_delivery_time DESC;

# Top Rated Delivery Partners
SELECT Delivery_person_ID,
AVG(Delivery_person_Ratings) AS avg_rating
FROM delivery_data
GROUP BY Delivery_person_ID
ORDER BY avg_rating DESC
LIMIT 10;

# Age Distribution of Delivery Partners
SELECT
MIN(Delivery_person_Age) AS youngest,
MAX(Delivery_person_Age) AS oldest,
AVG(Delivery_person_Age) AS avg_age
FROM delivery_data;

# Orders by Vehicle Type
SELECT Type_of_vehicle,
COUNT(*) AS total_orders
FROM delivery_data
GROUP BY Type_of_vehicle
ORDER BY total_orders DESC;


# High Traffic Delivery Time
SELECT AVG(TARGET) AS avg_delivery_time
FROM delivery_data
WHERE Traffic_Level = 'High';

# Best Vehicle in High Traffic
SELECT Type_of_vehicle,
AVG(TARGET) AS avg_delivery_time
FROM delivery_data
WHERE Traffic_Level = 'High'
GROUP BY Type_of_vehicle
ORDER BY avg_delivery_time;