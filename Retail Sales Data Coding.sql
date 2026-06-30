-- Databricks notebook source
SELECT *
FROM retail.sales.dataset;

SELECT Date, `Product Category`, Quantity, `Total Amount`
FROM retail.sales.dataset;

SELECT *
FROM retail.sales.dataset
ORDER BY `Total Amount` DESC;

SELECT `Transaction ID`, Date
FROM retail.sales.dataset
WHERE MONTH(Date) = 1;

SELECT SUM(`Total Amount`) AS Total_Revenue,
       AVG(`Total Amount`) AS Avarage_Sale_Amount,
       MAX(`Total Amount`) AS Highest_Sale,
       MIN(`Total Amount`) AS Lowest_Sale,
       COUNT(`Transaction ID`) AS Number_Of_Transactions,
       COUNT(Gender) AS Number_Of_Famale_And_Male_Customers
FROM retail.sales.dataset;

SELECT SUM(`Price per Unit`) AS Total_Price_Per_Unit,
       AVG(`Price per Unit`) AS Average_Price_Per_Unit,
       MAX(`Price per Unit`) AS Highest_Total_Price_Per_Unit,
       MIN(`Price per Unit`) AS Lowest_Total_Price_Per_Unit
FROM retail.sales.dataset;

SELECT `Product Category` AS Product_Category,
        COUNT(*) AS Number_Of_Products,
        SUM(`Total Amount`) AS Total_Amount,
        AVG(`Total Amount`) AS Average_Total_Amount,
        MAX(`Total Amount`) AS Maximum_Total_Amount,
        MIN(`Total Amount`) AS Minmum_Total_Amount
FROM retail.sales.dataset
GROUP BY Product_category;

SELECT `Product Category` AS Product_Category,
        SUM(`Price per Unit`) AS Total_Price_Per_Unit,
        AVG(`Price per Unit`) AS Average_Price_Per_Unit
FROM retail.sales.dataset
GROUP BY Product_Category;

SELECT date_format(date, 'yyyy-MM') AS Month,
       SUM(`Price per Unit` * Quantity) AS Total_Sales,
       AVG(`Price per Unit` * Quantity) AS Average_Total_Sales,
       MAX(`Price per Unit` * Quantity) AS Maximum_Total_Sales,
       MIN(`Price per Unit` * Quantity) AS Minimum_Total_Sales
FROM retail.sales.dataset
GROUP BY date_format(date, 'yyyy-MM')
ORDER BY Month;
     






