USE ESOS;
GO
PRINT N'Creating table Roles'
CREATE TABLE ROLES
(
  ID INT NOT NULL IDENTITY(1,1),
  Name VARCHAR(50),
  Created Date,
  Updated Date,
  PRIMARY KEY(ID)
)

GO

CREATE TRIGGER RolesInsert ON Roles
FOR INSERT
AS
  BEGIN
    UPDATE Roles
    SET Created = CURRENT_TIMESTAMP
    FROM inserted
    WHERE inserted.ID = Roles.ID
  END
GO
CREATE TRIGGER RolesUpdate ON Roles
FOR UPDATE
AS
  BEGIN
    UPDATE Roles
    SET Updated = CURRENT_TIMESTAMP
    FROM inserted
    WHERE inserted.ID = Roles.ID
  END
GO
