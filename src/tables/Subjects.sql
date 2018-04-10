USE ESOS;
GO
PRINT N'Creating table Subjects'
CREATE TABLE SUBJECTS
(
  ID INT NOT NULL IDENTITY(1,1),
  Name VARCHAR(50),
  ECTS INT,
  Semester INT,
  Faculty_id INT,
  Created Date,
  Updated Date,
  PRIMARY KEY(ID)
)

GO

ALTER TABLE SUBJECTS
    ADD    FOREIGN KEY (Faculty_id)
    REFERENCES FACULTIES(ID)
;

GO



CREATE TRIGGER SubjectsInsert ON Subjects
FOR INSERT
AS
  BEGIN
    UPDATE Subjects
    SET Created = CURRENT_TIMESTAMP
    FROM inserted
    WHERE inserted.ID = Subjects.ID
  END
GO
CREATE TRIGGER SubjectsUpdate ON Subjects
FOR UPDATE
AS
  BEGIN
    UPDATE Subjects
    SET Updated = CURRENT_TIMESTAMP
    FROM inserted
    WHERE inserted.ID = Subjects.ID
  END
GO
