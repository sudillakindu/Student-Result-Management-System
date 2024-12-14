-- Create the database
CREATE DATABASE NIBMStudentManagementSystem;

USE NIBMStudentManagementSystem;

-- Create tables
-- 01. Creating a Branch Table
CREATE TABLE Branch (
    BranchID                     CHAR(5)        PRIMARY KEY CHECK (BranchID LIKE 'B%'),
    BranchName                   VARCHAR(35)    NOT NULL,
    BranchHead                   VARCHAR(30)    NOT NULL,
    BContactNumber               VARCHAR(15)    NOT NULL,
    BranchEmail                  VARCHAR(40)    NOT NULL UNIQUE CHECK (BranchEmail LIKE '%@%'),
    Location                     VARCHAR(15)    NOT NULL,
    NumberOfFaculty              INT            NOT NULL CHECK (NumberOfFaculty > 0)
);

-- 02. Creating a Department Table
CREATE TABLE Department (
    DepartmentID                 CHAR(5)        PRIMARY KEY CHECK (DepartmentID LIKE 'D%'),
    DepartmentName               VARCHAR(30)    NOT NULL,
    DepartmentHead               VARCHAR(30)    NOT NULL,
    DContactNumber               VARCHAR(15)    NOT NULL,
    DepartmentEmail              VARCHAR(40)    NOT NULL UNIQUE CHECK (DepartmentEmail LIKE '%@%')
);

-- 03. Creating a Faculty Table
CREATE TABLE Faculty (
    FacultyID                    CHAR(5)        PRIMARY KEY CHECK (FacultyID LIKE 'F%'),
    FacultyName                  VARCHAR(45)    NOT NULL,
    FacultyHead                  VARCHAR(30)    NOT NULL,
    FContactNumber               VARCHAR(15)	NOT NULL,
    FacultyEmail                 VARCHAR(40)    NOT NULL UNIQUE CHECK (FacultyEmail LIKE '%@%'),
    DepartmentID                 CHAR(5)        NOT NULL,
    FOREIGN KEY (DepartmentID)   REFERENCES Department (DepartmentID)
);

-- 04. Creating a Program Table
CREATE TABLE Program (
    ProgramID                    CHAR(5)        PRIMARY KEY CHECK (ProgramID LIKE 'P%'),
    ProgramName                  VARCHAR(40)    NOT NULL,
    Duration                     VARCHAR(40)    NOT NULL
);

-- 05. Creating a ProgramFaculty Table
CREATE TABLE ProgramFaculty (
    FacultyID                    CHAR(5)        NOT NULL,
    ProgramID                    CHAR(5)        NOT NULL,
    PRIMARY KEY (ProgramID, FacultyID),
    FOREIGN KEY (ProgramID)      REFERENCES Program (ProgramID),
    FOREIGN KEY (FacultyID)      REFERENCES Faculty (FacultyID)
);

-- 06. Creating a Course Table
CREATE TABLE Course (
    CourseID                     CHAR(5)        PRIMARY KEY CHECK (CourseID LIKE 'C%'),
    CourseName                   VARCHAR(60)    NOT NULL,
    Credit                       INT            NOT NULL CHECK (Credit > 0),
    CourseDescription            VARCHAR(100),
    ProgramID                    CHAR(5)        NOT NULL,
    CoursePrice                  DECIMAL(10, 2) NOT NULL CHECK (CoursePrice >= 0),
    FOREIGN KEY (ProgramID)      REFERENCES Program (ProgramID)
);

-- 07. Creating a Student Table
CREATE TABLE Student (
    StudentID                    CHAR(5)        PRIMARY KEY CHECK (StudentID LIKE 'S%'),
    Name                         VARCHAR(30)    NOT NULL,
    DOB                          DATE           NOT NULL,
    Age                          AS DATEDIFF(YEAR, DOB, GETDATE()),
    NIC                          VARCHAR(12)    UNIQUE,
    Email                        VARCHAR(40)    NOT NULL CHECK (Email LIKE '%@%'),
    PhoneNumber                  VARCHAR(15)    NOT NULL,
    Address                      VARCHAR(80)    NOT NULL,
    Country                      VARCHAR(56)    NOT NULL,
    EnrollmentDate               DATETIME       DEFAULT GETDATE(),
    BranchID                     CHAR(5)        NOT NULL,
    FOREIGN KEY (BranchID)       REFERENCES Branch (BranchID)
);

-- 08. Creating a Enrollment Table
CREATE TABLE Enrollment (
    EnrollmentID                 CHAR(5)        PRIMARY KEY CHECK (EnrollmentID LIKE 'E%'),
    StudentID                    CHAR(5)        NOT NULL,
    CourseID                     CHAR(5)        NOT NULL,
    EnrollmentDate               DATETIME       DEFAULT GETDATE(),
    Payments                     VARCHAR(10)    NOT NULL CHECK (Payments IN ('Paid', 'Pending')),
    Status                       VARCHAR(10)    NOT NULL CHECK (Status IN ('Active', 'Completed', 'Dropped')),
    FOREIGN KEY (StudentID)      REFERENCES Student (StudentID),
    FOREIGN KEY (CourseID)       REFERENCES Course  (CourseID)
);

-- 09. Creating a Classroom Table
CREATE TABLE Classroom (
    RoomNumber                   CHAR(5)        PRIMARY KEY CHECK (RoomNumber LIKE 'R%'),
    Floor                        CHAR(5)        NOT NULL,
    Capacity                     INT            NOT NULL CHECK (Capacity > 0),
    Equipment                    VARCHAR(100)
);

-- 10. Creating a Equipment Table
CREATE TABLE Equipment (
    EquipmentID                  CHAR(5)        PRIMARY KEY CHECK (EquipmentID LIKE 'EQ%'),
    EquipmentName                VARCHAR(15)    NOT NULL
);

-- 11. Creating a ClassroomEquipment Table
CREATE TABLE ClassroomEquipment (
	RoomNumber                   CHAR(5),
    EquipmentID                  CHAR(5),
	FOREIGN KEY (RoomNumber)     REFERENCES Classroom (RoomNumber),
    FOREIGN KEY (EquipmentID)    REFERENCES Equipment (EquipmentID)
);

-- 12. Creating a Schedule Table
CREATE TABLE Schedule (
    ScheduleID                   CHAR(10)       PRIMARY KEY CHECK (ScheduleID LIKE 'SH%'),
    CourseID                     CHAR(5)        NOT NULL,
    RoomNumber                   CHAR(5)        NOT NULL,
    ScheduleDate                 DATE           NOT NULL,
    StartTime                    TIME           NOT NULL,
    EndTime                      TIME           NOT NULL,
	CHECK (EndTime > StartTime),
    FOREIGN KEY (CourseID)       REFERENCES Course    (CourseID),
    FOREIGN KEY (RoomNumber)     REFERENCES Classroom (RoomNumber)
);

-- 13. Creating a Attendance Table
CREATE TABLE Attendance (
    AttendanceID                 CHAR(10)       PRIMARY KEY CHECK (AttendanceID LIKE 'A%'),
    StudentID                    CHAR(5)        NOT NULL,
    CourseID                     CHAR(5)        NOT NULL,
    Date                         DATE           NOT NULL,
    EntryTime                    TIME,
    ExitTime                     TIME,
    Status                       VARCHAR(10)    NOT NULL CHECK (Status IN ('Present', 'Absent')),
	CHECK (ExitTime > EntryTime),
    FOREIGN KEY (StudentID)      REFERENCES Student (StudentID),
    FOREIGN KEY (CourseID)       REFERENCES Course  (CourseID)
);

-- 14. Creating a Grade Table
CREATE TABLE Grade (
    GradeID                      CHAR(5)        PRIMARY KEY CHECK (GradeID LIKE 'G%'),
    EnrollmentID                 CHAR(5)        NOT NULL,
	Mark						 REAL           NOT NULL CHECK (Mark >= 0 AND Mark <= 100),
    Grade                        VARCHAR(2),
    GradeDate                    DATE           NOT NULL,
    FOREIGN KEY (EnrollmentID)   REFERENCES Enrollment (EnrollmentID)
);

Plz give me Entity Relationship Diagram ?