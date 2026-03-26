/** 1.Top 10 Most Active Users  **/
SELECT TOP 10 
    hm.user_id,
    AVG(hm.avg_daily_steps) AS avg_steps
FROM HealthMetrics hm
GROUP BY hm.user_id
ORDER BY avg_steps DESC;


/** 2.Users With Highest Wellness Score **/

SELECT TOP 10 
    hm.user_id,
    AVG(hm.avg_daily_steps) AS avg_steps
FROM HealthMetrics hm
GROUP BY hm.user_id
ORDER BY avg_steps DESC;

/** 3.Revenue By Subscription Plan **/

SELECT 
    s.subscription_plan,
    SUM(s.total_amount) AS total_revenue,
    COUNT(*) AS total_orders
FROM Sales s
GROUP BY s.subscription_plan
ORDER BY total_revenue DESC;

/** 4.Revenue By Product Category **/

SELECT 
    p.product_category,
    SUM(s.total_amount) AS total_revenue
FROM Sales s
JOIN Products p 
    ON s.product_id = p.product_id
GROUP BY p.product_category
ORDER BY total_revenue DESC;

/** 5.Device Type vs Average Activity **/

SELECT 
    d.device_type,
    AVG(d.total_steps_recorded) AS avg_steps
FROM Devices d
GROUP BY d.device_type
ORDER BY avg_steps DESC;

/** 6.High Stress Users (Top 10) **/

SELECT TOP 10
    hm.user_id,
    AVG(hm.avg_stress_level) AS avg_stress
FROM HealthMetrics hm
GROUP BY hm.user_id
ORDER BY avg_stress DESC;

/** 7.Customer Distribution By Income **/

SELECT 
    c.income_bracket,
    COUNT(*) AS total_customers
FROM Customers c
GROUP BY c.income_bracket
ORDER BY total_customers DESC;

/** 8.Average Sleep vs Activity Level (Correlation View) **/

SELECT 
    hm.user_id,
    AVG(hm.avg_sleep_hours) AS avg_sleep,
    AVG(hm.avg_daily_steps) AS avg_steps
FROM HealthMetrics hm
GROUP BY hm.user_id
ORDER BY avg_steps DESC;

/** 9.Open vs Resolved Service Tickets **/

SELECT 
    ticket_status,
    COUNT(*) AS total_tickets
FROM Service_Tickets
GROUP BY ticket_status;

/** 10.Top Customers by Spending **/

SELECT TOP 10
    s.user_id,
    SUM(s.total_amount) AS total_spent
FROM Sales s
GROUP BY s.user_id
ORDER BY total_spent DESC;

