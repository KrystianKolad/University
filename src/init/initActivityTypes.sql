USE ESOS
GO

SET IDENTITY_INSERT ACTIVITYTYPE ON
GO

INSERT INTO ACTIVITYTYPE
(ID,NAME)
VALUES
(1,'Lecture'),
(2,'Exercises'),
(3,'Laboratories'),
(4,'Seminar')
GO

SET IDENTITY_INSERT ACTIVITYTYPE OFF
GO