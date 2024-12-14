USE NIBMStudentManagementSystem;

INSERT INTO EMP VALUES('001','Perera');

SELECT *
FROM Branch , Department , Faculty , Program , ProgramFaculty , Course , Classroom;
WHERE 

DELETE FROM Course; 

DELETE FROM EMP; 

SELECT CONCAT('Rs.', FORMAT(30000.00, 2)) AS formatted_amount;

SELECT 
    CourseID,
    CourseName,
    Credit,
    CourseDescription,
    ProgramID,
    CONCAT('Rs.', FORMAT(CAST(CoursePrice AS DECIMAL(10, 2)), 'N2')) AS FormattedCoursePrice
FROM 
    Course;

INSERT INTO Program (ProgramID, ProgramName, Duration)
VALUES
   ( 'P001' , 'MSc'               , '2 years'                         ),
   ( 'P002' , 'Degree'            , '4 years'                         ),
   ( 'P003' , 'HND'               , '2 years'                         ),
   ( 'P004' , 'Diploma'           , '1 years'                         ),
   ( 'P005' , 'Certificate'       , '3 to 11 months'                  ),
   ( 'P006' , 'Foundation'        , 'Level1 1 year and Level2 2 year' ),
   ( 'P007' , 'Professional'      , '3 to 6 months'                   ),
   ( 'P008' , 'MBA'               , '2 years'                         ),
   ( 'P009' , 'Workshops'         , 'between 2 and 3 hours'           ),
   ( 'P010' , 'Foreign Languages' , '3 years'                         )