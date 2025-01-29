{{ config(materialized='table') }}

SELECT 
    r.Region_Name,
    r.State,
    r.Zip,
    p.Product_Name,
    b.Brand_Name,
    s.Time_Summary,
    SUM(s.Total_Sale_Amount) AS Dollar_Sales
FROM {{ ref('stg_sales') }} s
JOIN {{ ref('stg_products') }} p ON s.Product_ID = p.Product_ID
JOIN {{ ref('stg_brands') }} b ON p.Brand_ID = b.Brand_ID
JOIN {{ ref('stg_regions') }} r ON s.Region_ID = r.Region_ID
GROUP BY 
    r.Region_Name, r.State, r.Zip, p.Product_Name, b.Brand_Name, s.Time_Summary
