SELECT 
    `Year`,
    STR_TO_DATE(CONCAT(`Year`, '-01-01'), '%Y-%m-%d') AS first_january,
    CURDATE() AS today_date,  
    TIMESTAMPDIFF(YEAR, STR_TO_DATE(CONCAT(`Year`, '-01-01'), '%Y-%m-%d'), CURDATE()) AS year_difference
FROM infectious_cases
LIMIT 10;
