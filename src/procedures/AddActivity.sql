USE ESOS
GO

CREATE PROCEDURE [dbo].[AddActivity](
    @lecturer_id INT,
    @subject_id INT,
    @room_id INT,
    @type_id INT,
    @term DATETIME2
)
AS
    BEGIN
        SET NOCOUNT ON;  
        INSERT INTO ACTIVITIES
            (Lecturer_id,
            Subject_id,
            Room_id,
            Type_id,
            Term)
            VALUES
            (@lecturer_id,
            @subject_id,
            @room_id,
            @type_id,
            @term)
    END
GO
GRANT EXECUTE ON [dbo].[AddActivity] TO EsosApp
GO
