USE ESOS;
GO
PRINT N'Creating table UserActivity'
CREATE TABLE USERACTIVITY
(
  ID INT NOT NULL IDENTITY(1,1),
  User_id INT,
  Activity_id INT,
  Created Date,
  Updated Date,
  PRIMARY KEY(ID)
)

GO

ALTER TABLE USERACTIVITY
    ADD    FOREIGN KEY (Activity_id)
    REFERENCES ACTIVITIES(ID)
;

GO

CREATE TRIGGER UseractivityInsert ON Useractivity
FOR INSERT
AS
  BEGIN
    UPDATE Useractivity
    SET Created = CURRENT_TIMESTAMP
    FROM inserted
    WHERE inserted.ID = Useractivity.ID
  END
GO
CREATE TRIGGER UseractivityUpdate ON Useractivity
FOR UPDATE
AS
  BEGIN
    UPDATE Useractivity
    SET Updated = CURRENT_TIMESTAMP
    FROM inserted
    WHERE inserted.ID = Useractivity.ID
  END
GO
