USE ESOS;
GO
PRINT N'Creating table Buildings'
CREATE TABLE BUILDINGS
(
  ID INT NOT NULL IDENTITY(1,1),
  Name VARCHAR(50),
  Street VARCHAR(50),
  Number INT,
  PostCode VARCHAR(6),
  City VARCHAR(50),
  Created Date,
  Updated Date,
  PRIMARY KEY(ID)
)

GO

CREATE TRIGGER BuildingsInsert ON Buildings
FOR INSERT
AS
  BEGIN
    UPDATE Buildings
    SET Created = CURRENT_TIMESTAMP
    FROM inserted
    WHERE inserted.ID = Buildings.ID
  END
GO
CREATE TRIGGER BuildingsUpdate ON Buildings
FOR UPDATE
AS
  BEGIN
    UPDATE Buildings
    SET Updated = CURRENT_TIMESTAMP
    FROM inserted
    WHERE inserted.ID = Buildings.ID
  END
GO
