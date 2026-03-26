/****** Object:  View [dbo].[MultinationalSalesSummary]    Script Date: 25-03-2026 13:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the indexed view.
CREATE VIEW [dbo].[MultinationalSalesSummary] 
WITH SCHEMABINDING 
AS
SELECT 
    region, 
    product_id, 
    SUM(total_amount) AS TotalSales,
    COUNT_BIG(*) AS row_count
FROM dbo.Sales
GROUP BY region, product_id;
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO


/****** Object:  View [dbo].[UserHealthSummary]    Script Date: 25-03-2026 13:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[UserHealthSummary] AS
SELECT 
    c.age,
    c.occupation,
    c.income_bracket,
    hm.avg_heart_rate,
    hm.avg_daily_steps,
    hm.avg_sleep_hours,
    hm.avg_stress_level
FROM [dbo].[Customers] c
JOIN [dbo].[HealthMetrics] hm ON c.user_id = hm.user_id;
GO