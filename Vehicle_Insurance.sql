USE EXL;

SELECT * FROM insurance;

SELECT COUNT(*) AS Total_Applicants
FROM insurance; 

-- 2. Total Premium
SELECT ROUND(SUM(Premium),2) AS Total_premium
FROM insurance;

-- 3. Total Claim Amount
SELECT ROUND(SUM(Claim_Amount),2) AS Total_Claim_Amount
FROM insurance;

-- 4. Average Premium
SELECT ROUND(AVG(Claim_Amount),2) AS Total_Claim_Amount
FROM insurance;

-- 5. Average Claim Amount
SELECT ROUND(AVG(Claim_Amount),2) AS Total_Claim_Amount
FROM insurance; 

################## Business Questions ###################
-- 1. Which brands have the highest total claim amount?
SELECT Brand, ROUND(SUM(Claim_Amount),2) AS Highest_Claim_Amount
FROM insurance
GROUP BY Brand
ORDER BY Highest_Claim_Amount DESC
LIMIT 1;

-- 2. Top 10 Brands
SELECT Brand, ROUND(SUM(Claim_Amount),2) AS Top10_Claim_Amount
FROM insurance
GROUP BY Brand
ORDER BY Top10_Claim_Amount DESC
LIMIT 10; 

-- 3. Top Premium Generating Brands
SELECT Brand, ROUND(SUM(Premium),2) AS Top_Premium
FROM insurance
GROUP BY Brand
ORDER BY Top_Premium DESC
LIMIT 10; 

-- 4. Vehicle Type wise Premium
SELECT Vehicle_Types, ROUND(SUM(Premium),2) AS Total_Premium 
FROM insurance
GROUP BY Vehicle_Types
ORDER BY Total_Premium DESC;

-- 5. Vehicle Type wise Claim
SELECT Vehicle_Types, ROUND(SUM(Claim_Amount),2) AS Total_Claim_Amount 
FROM insurance
GROUP BY Vehicle_Types
ORDER BY Total_Claim_Amount DESC;

-- 6. Commercial vs Private Claim
SELECT Usage_Types, ROUND(SUM(Claim_Amount),2) AS Total_Claim_Amount 
FROM insurance
GROUP BY Usage_Types
ORDER BY Total_Claim_Amount DESC;

-- 7. Average Claim by Vehicle Age
SELECT Vehicle_Age, ROUND(AVG(Claim_Amount),2) AS Avg_Claim_Amount 
FROM insurance
GROUP BY Vehicle_Age
ORDER BY Avg_Claim_Amount DESC;

-- 7.1 Average Claim by Vehicle Age Group
SELECT Vehicle_Age_Group, ROUND(AVG(Claim_Amount),2) AS Avg_Claim_Amount 
FROM insurance
GROUP BY Vehicle_Age_Group;

-- 8. Highest Premium Customers
SELECT *
FROM insurance
ORDER BY Premium DESC
LIMIT 10;

-- 9. Highest Claim Customers
SELECT * 
FROM insurance
ORDER BY Claim_Amount DESC
LIMIT 10;

SELECT * FROM insurance;

-- 10. Insurance Type Performance
SELECT Insurance_Types, 
       ROUND(SUM(Premium),2) AS Total_Premium,
       ROUND(SUM(Claim_Amount),2) AS Total_Claim
FROM insurance
GROUP BY Insurance_Types
ORDER BY Total_Premium DESC;

#############  Intermediate SQL ################
-- 11. Brand + Vehicle Type
SELECT Brand, Vehicle_Types, 
       SUM(Premium) AS Total_Premium
FROM insurance
GROUP BY Brand, Vehicle_Types
ORDER BY Total_Premium DESC;

-- 12. Claim Ratio by Brand
SELECT Brand, 
       ROUND(AVG(Claim_Ratio),2) AS Avg_Claim_Ratio
FROM insurance
GROUP BY Brand
ORDER BY Avg_Claim_Ratio DESC;

-- 13. Average Vehicle Age
SELECT Brand, ROUND(AVG(Vehicle_Age),2) AS Avg_Vehicle_Age
FROM insurance
GROUP BY Brand
ORDER BY Avg_Vehicle_Age DESC;

-- 14. Gender wise Premium
SELECT Gender,
       ROUND(SUM(Premium),2) AS Total_Premium
FROM insurance
GROUP BY Gender
ORDER BY Total_Premium DESC;

-- 15. Gender wise Claim Amount
SELECT Gender,
       ROUND(SUM(Claim_Amount),2) AS Total_Claim_Amount
FROM insurance
GROUP BY Gender
ORDER BY Total_Claim_Amount DESC;

########### Advance SQL Problem ############

-- 16. Top Premium Customer in every Brand
SELECT *
FROM (
SELECT Brand,
ROW_NUMBER() OVER(PARTITION BY Brand ORDER BY Premium) AS Ranks
FROM insurance
) t
WHERE Ranks = 1; 

-- 17. Top 3 Brands
SELECT Brand,
SUM(Premium) Premium,
DENSE_RANK() OVER(ORDER BY SUM(Premium) DESC) Ranking
FROM insurance
GROUP BY Brand
LIMIT 3;

-- 18. Running Premium
SELECT Policy_Year,
ROUND(SUM(Premium),2),
SUM(SUM(Premium))
OVER(ORDER BY Policy_Year)
Running_Premium 
FROM insurance
GROUP BY Policy_Year;

-- 