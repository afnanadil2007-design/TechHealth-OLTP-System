/****** Object:  UserDefinedFunction [dbo].[CalculateWellnessScore]    Script Date: 25-03-2026 13:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[CalculateWellnessScore] (
    @avg_daily_steps INT,
    @avg_exercise_minutes INT,
    @avg_sleep_hours DECIMAL(3,1)
)
RETURNS DECIMAL(5,3)
AS
BEGIN
    RETURN (
        (CAST(@avg_daily_steps AS DECIMAL) / 10000) +
        (CAST(@avg_exercise_minutes AS DECIMAL) / 60) +
        (CAST(@avg_sleep_hours AS DECIMAL) / 8)
    ) / 3;
END;
GO