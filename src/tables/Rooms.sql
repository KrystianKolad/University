USE ESOS;
GO
PRINT N'Creating table Rooms'
CREATE TABLE ROOMS
(
  ID INT NOT NULL IDENTITY(1,1),
  Building_id INT,
  StudentsLimit INT,
  RoomNumber INT,
  FloorNumber INT,
  Created Date,
  Updated Date,
  PRIMARY KEY(ID)
)

GO

ALTER TABLE ROOMS
    ADD    FOREIGN KEY (Building_id)
    REFERENCES BUILDINGS(ID)
;

GO

CREATE TRIGGER RoomsInsert ON Rooms
FOR INSERT
AS
  BEGIN
    UPDATE Rooms
    SET Created = CURRENT_TIMESTAMP
    FROM inserted
    WHERE inserted.ID = Rooms.ID
  END
GO
CREATE TRIGGER RoomsUpdate ON Rooms
FOR UPDATE
AS
  BEGIN
    UPDATE Rooms
    SET Updated = CURRENT_TIMESTAMP
    FROM inserted
    WHERE inserted.ID = Rooms.ID
  END
GO
