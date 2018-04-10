USE ESOS
GO

CREATE PROCEDURE [dbo].[ComplainMark](
    @markId INT
)
AS
    BEGIN
        SET NOCOUNT ON;  
        UPDATE MARKS
        SET IsComplained = 1, IsAccepted = 0
        WHERE ID = @markId
    END
GO
GRANT EXECUTE ON [dbo].[ComplainMark] TO EsosApp
GO
