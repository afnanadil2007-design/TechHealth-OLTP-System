/****** Object:  StoredProcedure [dbo].[ResolveServiceTickets]    Script Date: 25-03-2026 13:39:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ResolveServiceTickets]
    @updateDate DATE,
    @updateTicketStatus NVARCHAR(50)
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        UPDATE [dbo].[Service_Tickets]
        SET ticket_status = 'Resolved',
            resolution_date = @updateDate
        WHERE ticket_status = @updateTicketStatus
          AND resolution_date IS NULL;

        COMMIT;
    END TRY
    BEGIN CATCH
        ROLLBACK;
        PRINT 'An error occurred while resolving tickets.';
        PRINT ERROR_MESSAGE();
    END CATCH
END;
GO