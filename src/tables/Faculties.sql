USE ESOS;
GO
PRINT N'Creating table Faculties'
CREATE TABLE FACULTIES
(
  ID INT NOT NULL IDENTITY(1,1),
  Name VARCHAR(100),
  Threshold INT NOT NULL,
  Created Date,
  Updated Date,
  PRIMARY KEY(ID)
)

GO

CREATE TRIGGER FacultiesInsert ON Faculties
FOR INSERT
AS
  BEGIN
    UPDATE Faculties
    SET Created = CURRENT_TIMESTAMP
    FROM inserted
    WHERE inserted.ID = Faculties.ID
  END
GO
CREATE TRIGGER FacultiesUpdate ON Faculties
FOR UPDATE
AS
  BEGIN
    UPDATE Faculties
    SET Updated = CURRENT_TIMESTAMP
    FROM inserted
    WHERE inserted.ID = Faculties.ID
  END
GO
