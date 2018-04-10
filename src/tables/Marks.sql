USE ESOS;
GO
PRINT N'Creating table Marks'
CREATE TABLE MARKS
(
  ID INT NOT NULL IDENTITY(1,1),
  Activity_id INT,
  User_id INT,
  Value FLOAT(2),
  IsAccepted BIT,
  IsComplained BIT,
  Created Date,
  Updated Date,
  PRIMARY KEY(ID)
)

GO

ALTER TABLE MARKS
    ADD    FOREIGN KEY (Activity_id)
    REFERENCES ACTIVITIES(ID)
;

GO

ALTER TABLE MARKS
    ADD    FOREIGN KEY (User_id)
    REFERENCES USERS(ID)
;

GO

CREATE UNIQUE INDEX Marks_index ON Marks (ID,User_id, Activity_id);
GO

CREATE TRIGGER MarksInsert ON Marks
FOR INSERT
AS
  BEGIN
    UPDATE Marks
    SET Created = CURRENT_TIMESTAMP
    FROM inserted
    WHERE inserted.ID = Marks.ID
  END
GO
CREATE TRIGGER MarksUpdate ON Marks
FOR UPDATE
AS
  BEGIN
    UPDATE Marks
    SET Updated = CURRENT_TIMESTAMP
    FROM inserted
    WHERE inserted.ID = Marks.ID
  END
GO
