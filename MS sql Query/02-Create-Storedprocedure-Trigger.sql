USE NIBMStudentManagementSystem;

-- 01. Create ProgramFacultyTable Procedure
CREATE PROCEDURE InsertDataProgramFacultyTable (
    @FacultyID CHAR(5),
    @ProgramID CHAR(5)
)
AS
BEGIN
    INSERT INTO ProgramFaculty (FacultyID, ProgramID) 
    VALUES
		( @FacultyID , @ProgramID );
END;


-- 02. Create ClassroomEquipmentTable Procedure
CREATE PROCEDURE InsertDataClassroomEquipmentTable (
    @RoomNumber  CHAR(5),
    @EquipmentID CHAR(5) 
)
AS
BEGIN
    INSERT INTO ClassroomEquipment (RoomNumber, EquipmentID) 
    VALUES
		( @RoomNumber , @EquipmentID );
END;


-- 03. Create Trigger
CREATE TRIGGER AutoFill_Grade
ON Grade
AFTER INSERT
AS
BEGIN
    UPDATE Grade
    SET Grade = CASE 
                    WHEN Mark >= 90 THEN 'A+'
                    WHEN Mark >= 80 THEN 'A'
                    WHEN Mark >= 75 THEN 'A-'
                    WHEN Mark >= 70 THEN 'B+'
                    WHEN Mark >= 65 THEN 'B'
                    WHEN Mark >= 60 THEN 'B-'
                    WHEN Mark >= 55 THEN 'C+'
                    WHEN Mark >= 50 THEN 'C'
                    WHEN Mark >= 45 THEN 'C-'
                    WHEN Mark >= 40 THEN 'D+'
                    WHEN Mark >= 35 THEN 'D'
                    ELSE 'E'
                END
    WHERE GradeID IN (SELECT GradeID FROM inserted);
END;
