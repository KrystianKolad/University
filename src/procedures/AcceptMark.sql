USE ESOS
GO

CREATE PROCEDURE [dbo].[AcceptMark](
    @markId INT
)
AS
    BEGIN
        SET NOCOUNT ON; 
        UPDATE MARKS
        SET IsAccepted = 1,  IsComplained = 0
        WHERE ID = @markId;
    END
GO
GRANT EXECUTE ON [dbo].[AcceptMark] TO EsosApp
GO
