USE NIBMStudentManagementSystem;

-- 01. Create Logins and Users

CREATE LOGIN sudil WITH PASSWORD ='sudil@123' ; 
CREATE USER user_sudil FOR LOGIN sudil ;

CREATE LOGIN ashan WITH PASSWORD ='ashan@123' ; 
CREATE USER user_ashan FOR LOGIN ashan ;

CREATE LOGIN praveen WITH PASSWORD ='praveen@123' ; 
CREATE USER user_praveen FOR LOGIN praveen ;

-- 02. Grant Permissions

GRANT INSERT, UPDATE, DELETE, SELECT ON Branch			TO user_sudil;
GRANT INSERT, UPDATE, DELETE, SELECT ON Department		TO user_sudil;
GRANT INSERT, UPDATE, DELETE, SELECT ON Faculty			TO user_sudil;
GRANT INSERT, UPDATE, DELETE, SELECT ON Program			TO user_sudil;
GRANT INSERT, UPDATE, DELETE, SELECT ON ProgramFaculty	TO user_sudil;
GRANT INSERT, UPDATE, DELETE, SELECT ON Course			TO user_sudil;
GRANT INSERT, UPDATE, DELETE, SELECT ON Classroom		TO user_sudil;

GRANT INSERT, UPDATE, DELETE, SELECT ON Student		TO user_ashan;
GRANT INSERT, UPDATE, DELETE, SELECT ON Enrollment	TO user_ashan;
GRANT INSERT, UPDATE, DELETE, SELECT ON Schedule	TO user_ashan;
GRANT INSERT, UPDATE, DELETE, SELECT ON Attendance	TO user_ashan;
GRANT INSERT, UPDATE, DELETE, SELECT ON Grade		TO user_ashan;

GRANT SELECT ON SCHEMA::dbo TO user_praveen;

-- 03. Grant Permissions

REVOKE 
	SELECT
ON SCHEMA::dbo
TO user_ashan ;