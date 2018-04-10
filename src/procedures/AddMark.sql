USE ESOS
GO

CREATE PROCEDURE [dbo].[AddMark](
    @activityId INT,
    @userId INT,
    @value float(2)
)
AS
    BEGIN
        SET NOCOUNT ON;  
        INSERT INTO MARKS
        (Activity_id,User_id,Value,IsAccepted)
        VALUES
        (@activityId,@userId,@value,0);
    END
GO
GRANT EXECUTE ON [dbo].[AddMark] TO EsosApp
GO
