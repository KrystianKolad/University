USE ESOS;
GO
PRINT N'Creating table ActivityType'
CREATE TABLE ACTIVITYTYPE
(
  ID INT NOT NULL IDENTITY(1,1),
  Name VARCHAR(100),
  Created Date,
  Updated Date,
  PRIMARY KEY(ID)
)

GO

CREATE TRIGGER ActivitytypeInsert ON Activitytype
FOR INSERT
AS
  BEGIN
    UPDATE Activitytype
    SET Created = CURRENT_TIMESTAMP
    FROM inserted
    WHERE inserted.ID = Activitytype.ID
  END
GO
CREATE TRIGGER ActivitytypeUpdate ON Activitytype
FOR UPDATE
AS
  BEGIN
    UPDATE Activitytype
    SET Updated = CURRENT_TIMESTAMP
    FROM inserted
    WHERE inserted.ID = Activitytype.ID
  END
GO
