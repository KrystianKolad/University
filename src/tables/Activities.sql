USE ESOS;
GO
PRINT N'Creating table Activities'
CREATE TABLE ACTIVITIES
(
  ID INT NOT NULL IDENTITY(1,1),
  Lecturer_id INT,
  Subject_id INT,
  Room_id INT,
  Type_id INT,
  Faculty_id INT,
  Term DATETIME2,
  Created Date,
  Updated Date,
  PRIMARY KEY(ID)
)

GO

ALTER TABLE ACTIVITIES
    ADD    FOREIGN KEY (Lecturer_id)
    REFERENCES USERS(ID)
;

GO

ALTER TABLE ACTIVITIES
    ADD    FOREIGN KEY (Subject_id)
    REFERENCES SUBJECTS(ID)
;

GO

ALTER TABLE ACTIVITIES
    ADD    FOREIGN KEY (Room_id)
    REFERENCES ROOMS(ID)
;

GO

ALTER TABLE ACTIVITIES
    ADD    FOREIGN KEY (Type_id)
    REFERENCES ACTIVITYTYPE(ID)
;

GO

CREATE TRIGGER ActivitiesInsert ON Activities
FOR INSERT
AS
  BEGIN
    UPDATE Activities
    SET Created = CURRENT_TIMESTAMP
    FROM inserted
    WHERE inserted.ID = Activities.ID
  END
GO
CREATE TRIGGER ActivitiesUpdate ON Activities
FOR UPDATE
AS
  BEGIN
    UPDATE Activities
    SET Updated = CURRENT_TIMESTAMP
    FROM inserted
    WHERE inserted.ID = Activities.ID
  END
GO
