-- ======================================
-- AtliQ Hospitality SQL Analysis
-- ======================================

-- 1. Total Revenue
SELECT 
    SUM(Revenue) AS Total_Revenue
FROM atliq_analysis;

-- 2. Total Bookings
SELECT 
    COUNT(*) AS Total_Bookings
FROM atliq_analysis;

-- 3. Cancellation Rate
SELECT 
    ROUND(
        SUM(Cancellation_Flag) * 100.0 / COUNT(*), 2
    ) AS Cancellation_Rate_Percentage
FROM atliq_analysis;

-- 4. Revenue by City
SELECT 
    city,
    SUM(Revenue) AS City_Revenue
FROM atliq_analysis
GROUP BY city
ORDER BY City_Revenue DESC;

-- 5. Revenue by Room Class
SELECT 
    room_class,
    SUM(Revenue) AS Room_Revenue
FROM atliq_analysis
GROUP BY room_class
ORDER BY Room_Revenue DESC;

-- 6. Monthly Revenue
SELECT 
    strftime('%m', check_in_date) AS Month,
    SUM(Revenue) AS Monthly_Revenue
FROM atliq_analysis
GROUP BY Month
ORDER BY Month;