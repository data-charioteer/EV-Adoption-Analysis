-- ==================
-- Database & Table Creation
-- ==================
CREATE DATABASE IF NOT EXISTS ev_project;
USE ev_project;

-- Creating table
CREATE TABLE IF NOT EXISTS  ev_sales(
    year INT,
    country VARCHAR(20),
    vehicle_category VARCHAR(50),
    segment VARCHAR(100),
    sales_quantity INT,
    ev_penetration float
);
-- ============================
-- Schema Fix & Data Cleaning
-- ============================

-- Remove invalid records if any
DELETE FROM ev_sales
WHERE sales_quantity IS NULL OR sales_quantity < 0;

-- Standardize text fields
UPDATE ev_sales
SET vehicle_category = TRIM(vehicle_category),
	segment = TRIM(segment);


-- Counting all rows from the table ev_sales
SELECT COUNT(*) FROM ev_sales;

-- ================
-- Analysis
-- ================

-- Year-wise EV Sales Trend(India)
SELECT
	year,
    SUM(sales_quantity) AS total_ev_sales
FROM ev_sales
GROUP BY year
ORDER BY year;

-- Year-on-Year EV Sales Growth
SELECT
    year,
    total_ev_sales,
    ROUND(
        (total_ev_sales - LAG(total_ev_sales) OVER (ORDER BY year))
        / LAG(total_ev_sales) OVER (ORDER BY year) * 100,
        2
    ) AS yoy_growth_percent
FROM (
    SELECT
        year,
        SUM(sales_quantity) AS total_ev_sales
    FROM ev_sales
    GROUP BY year
) yearly_sales
ORDER BY year;

-- Sales by Vehicle Category
SELECT 
   vehicle_category,
   SUM(sales_quantity) AS total_ev_sales
FROM ev_sales
GROUP BY vehicle_category
ORDER BY total_ev_sales DESC;

-- Category-wise Growth
SELECT
   year,
   vehicle_category,
   SUM(sales_quantity) AS total_ev_sales
FROM ev_sales
GROUP BY year, vehicle_category
ORDER BY year, vehicle_category;


-- EV Penetration Trend
SELECT
    year,
    AVG(ev_penetration) AS avg_ev_penetration
FROM ev_sales
GROUP BY year
ORDER BY year;

-- Which EV segments (high-speed vs others) are driving sales?

SELECT
    segment,
    SUM(sales_quantity) AS total_ev_sales
FROM ev_sales
GROUP BY segment
ORDER BY total_ev_sales DESC;


