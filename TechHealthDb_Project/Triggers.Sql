/****** Object:  Trigger [dbo].[trg_ValidateCoachDates]    Script Date: 25-03-2026 13:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_ValidateCoachDates]
ON [dbo].[Coach_Customer]
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (
        SELECT 1 FROM inserted 
        WHERE start_date IS NOT NULL AND end_date IS NOT NULL 
          AND end_date < start_date
    )
    BEGIN
        RAISERROR ('End date cannot be before start date.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
GO
ALTER TABLE [dbo].[Coach_Customer] ENABLE TRIGGER [trg_ValidateCoachDates]
GO

/****** Object:  Trigger [dbo].[trg_AuditUpdate_HealthMetrics]    Script Date: 25-03-2026 13:39:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_AuditUpdate_HealthMetrics]
ON [dbo].[HealthMetrics]
AFTER UPDATE
AS
BEGIN
    INSERT INTO HealthMetricsAudit (user_id, old_value, new_value, updated_on)
    SELECT 
        d.user_id,
        d.avg_daily_steps,
        i.avg_daily_steps,
        GETDATE()
    FROM inserted i
    JOIN deleted d ON i.user_id = d.user_id
    WHERE d.avg_daily_steps <> i.avg_daily_steps;
END;
GO
ALTER TABLE [dbo].[HealthMetrics] ENABLE TRIGGER [trg_AuditUpdate_HealthMetrics]
GO