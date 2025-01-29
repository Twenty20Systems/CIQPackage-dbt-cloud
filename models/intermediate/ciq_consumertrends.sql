    SELECT 
        s.Time_Summary,
        r.Region_Name,
        p.Product_Name,
        b.Brand_Name,
        SUM(s.Total_Sale_Amount) AS Total_Sales,
        SUM(s.Units_Sold) AS Total_Units
    FROM {{ ref('stg_sales') }} s
    JOIN {{ ref('stg_products') }} p ON s.Product_ID = p.Product_ID
    JOIN {{ ref('stg_brands') }} b ON p.Brand_ID = b.Brand_ID
    JOIN {{ ref('stg_regions') }} r ON s.Region_ID = r.Region_ID
    GROUP BY s.Time_Summary, r.Region_Name, p.Product_Name, b.Brand_Name