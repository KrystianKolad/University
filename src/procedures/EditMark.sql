USE ESOS
GO

CREATE PROCEDURE [dbo].[EditMark](
    @markId INT,
    @value float(2)
)
AS
    BEGIN
        SET NOCOUNT ON; 
        UPDATE MARKS
        SET IsAccepted = 1, IsComplained = 0, Value = @value
        WHERE ID = @markId;
    END
GO
GRANT EXECUTE ON [dbo].[EditMark] TO EsosApp

