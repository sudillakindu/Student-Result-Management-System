USE NIBMStudentManagementSystem;

-- 01.Insert data into the Branch table 
INSERT INTO Branch (BranchID, BranchName, BranchHead, BContactNumber, BranchEmail, Location, NumberOfFaculty)
VALUES
   ( 'B001' , 'NIBM Matara Campus'     , 'Dr. Anusha Liyanage'      , '+9491-2121061' , 'anushal.m@nibm.lk'  , 'Matara'     , 5 ),
   ( 'B002' , 'NIBM Colombo Campus'    , 'Dr. D M A Kulasooriya'    , '+9411-7320000' , 'dg@nibm.lk'         , 'Colombo'    , 8 ),
   ( 'B003' , 'NIBM Galle Campus'	   , 'Dr. Anusha Liyanage'      , '+9491-2121061' , 'anushal.g@nibm.lk'  , 'Galle'      , 6 ),
   ( 'B004' , 'NIBM Kandy Campus'      , 'Mr. Ishan Wiratunga'      , '+9481-2236651' , 'ishan@nibm.lk'      , 'Kandy'      , 4 ),
   ( 'B005' , 'NIBM Kurunegala Campus' , 'Mr. K P Cyril Gunarathna' , '+9477-5555243' , 'gunarathne@nibm.lk' , 'Kurunegala' , 3 ),
   ( 'B006' , 'NIBM Rajagiriya Campus' , 'Mr. R A K Ranawaka'       , '+9411-7321000' , 'kolitha@nibm.lk'    , 'Rajagiriya' , 5 ),
   ( 'B007' , 'NIBM Kirulapone NIC'    , 'Mr. K N Tharanga'         , '+9471-3004985' , 'nadeep@nibm.lk'     , 'Kirulapone' , 2 ),
   ( 'B008' , 'NIBM Kandy KIC'         , 'Ms. Ruwanthi Medagoda'    , '+9477-1528836' , 'ruwanthi@nibm.lk'   , 'Kandy'      , 2 )
;


-- 02.Insert data into the Department table 
INSERT INTO Department (DepartmentID, DepartmentName, DepartmentHead, DContactNumber, DepartmentEmail)
VALUES
   ( 'D001' , 'Computer Science' , 'Dr. Sunith Jayatissa'   , '077-5553272' , 'computerscience@nibm.lk' ),
   ( 'D002' , 'Finance'          , 'Dr. Udash Goonesekara'  , '071-5555273' , 'finance@nibm.lk'         ),
   ( 'D003' , 'Language'         , 'Dr. Gayan Senavirathna' , '071-5555275' , 'language@nibm.lk'        )
;


-- 03.Insert data into the Faculty table 
INSERT INTO Faculty (FacultyID, FacultyName, FacultyHead, FContactNumber, FacultyEmail, DepartmentID)
VALUES
   ( 'F001' , 'School of Computing'             , 'Dr. Sunith Jayatissa'     , '077-5556691' , 'jayatissa@nibm.lk'    , 'D001' ),
   ( 'F002' , 'School of Business'              , 'Dr. Ravinath Kumaratunga' , '077-5556692' , 'ravinath@nibm.lk'     , 'D002' ),
   ( 'F003' , 'School of Engineering'           , 'Dr. Udash Goonesekara'    , '077-5556693' , 'goonesekara@nibm.lk'  , 'D001' ),
   ( 'F004' , 'School of Language'              , 'Dr. Sunali Devapriya'     , '077-5556694' , 'sunaliD@nibm.lk'      , 'D003' ),
   ( 'F005' , 'School of Design'                , 'Dr. Madushi Gunapala'     , '077-5556695' , 'madushi97@nibm.lk'    , 'D001' ),
   ( 'F006' , 'School of Humanities'            , 'Dr. Lakshitha Rathnayake' , '077-5556696' , 'lakshitha123@nibm.lk' , 'D003' ),
   ( 'F007' , 'Business Analytics Centre'       , 'Dr. Shashiman Obeysekera' , '077-5556697' , 'obeysekara89@nibm.lk' , 'D002' ),
   ( 'F008' , 'Productivity and Quality Centre' , 'Dr. Nimasha Wickrema'     , '077-5556698' , 'nimashaWick@nibm.lk'  , 'D002' )
;


-- 04.Insert data into the Program table 
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
;


-- 05.Insert data into the ProgramFaculty table 
EXEC InsertDataProgramFacultyTable @FacultyID = 'F001', @ProgramID = 'P001';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F001', @ProgramID = 'P002';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F001', @ProgramID = 'P003';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F001', @ProgramID = 'P004';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F001', @ProgramID = 'P005';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F001', @ProgramID = 'P006';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F001', @ProgramID = 'P007';

EXEC InsertDataProgramFacultyTable @FacultyID = 'F002', @ProgramID = 'P002';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F002', @ProgramID = 'P003';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F002', @ProgramID = 'P004';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F002', @ProgramID = 'P005';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F002', @ProgramID = 'P006';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F002', @ProgramID = 'P008';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F002', @ProgramID = 'P009';

EXEC InsertDataProgramFacultyTable @FacultyID = 'F003', @ProgramID = 'P002';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F003', @ProgramID = 'P004';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F003', @ProgramID = 'P005';

EXEC InsertDataProgramFacultyTable @FacultyID = 'F004', @ProgramID = 'P002';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F004', @ProgramID = 'P004';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F004', @ProgramID = 'P005';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F004', @ProgramID = 'P006';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F004', @ProgramID = 'P007';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F004', @ProgramID = 'P009';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F004', @ProgramID = 'P010';

EXEC InsertDataProgramFacultyTable @FacultyID = 'F005', @ProgramID = 'P002';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F005', @ProgramID = 'P004';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F005', @ProgramID = 'P005';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F005', @ProgramID = 'P006';

EXEC InsertDataProgramFacultyTable @FacultyID = 'F006', @ProgramID = 'P001';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F006', @ProgramID = 'P002';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F006', @ProgramID = 'P004';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F006', @ProgramID = 'P005';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F006', @ProgramID = 'P006';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F006', @ProgramID = 'P010';

EXEC InsertDataProgramFacultyTable @FacultyID = 'F007', @ProgramID = 'P001';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F007', @ProgramID = 'P002';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F007', @ProgramID = 'P004';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F007', @ProgramID = 'P006';

EXEC InsertDataProgramFacultyTable @FacultyID = 'F008', @ProgramID = 'P002';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F008', @ProgramID = 'P004';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F008', @ProgramID = 'P005';
EXEC InsertDataProgramFacultyTable @FacultyID = 'F008', @ProgramID = 'P006';


-- 06.Insert data into the Course table 
INSERT INTO Course (CourseID, CourseName, Credit, CourseDescription, ProgramID, CoursePrice)
VALUES
   ( 'C001' , 'Artificial Intelligence'              , 45 , 'aaaaaa' , 'P001' , 300000 ),
   ( 'C002' , 'Ethical Hacking and Network Security' , 35 , 'bbbbbb' , 'P002' , 560000 ),
   ( 'C003' , 'Software Engineering'                 , 38 , 'cccccc' , 'P003' , 580000 ),
   ( 'C004' , 'Software Engineering'                 , 45 , 'dddddd' , 'P004' , 290000 ),
   ( 'C005' , 'Computer Applications'                , 32 , ''       , 'P005' , 300000 ),
   ( 'C006' , 'Python Programming'                   , 39 , 'eeeeee' , 'P006' , 100000 ),

   ( 'C007' , 'Professional Accounting'                    , 45 , 'fffffff' , 'P002' , 620000 ),
   ( 'C008' , 'Professional Accounting'                    , 45 , 'ggggggg' , 'P003' , 120000 ),
   ( 'C009' , 'Marketing Management'                       , 38 , 'hhhhhhh' , 'P004' , 330000 ),
   ( 'C010' , 'Foundation Programme for Bachelor’s Degree' , 39 , 'iiiiiii' , 'P005' , 450000 ),
   ( 'C011' , 'Soft Skills Development for Managers'       , 44 , 'jjjjjjj' , 'P006' , 210000 ),
   ( 'C012' , 'Global Business'                            , 44 , 'kkkkkkk' , 'P008' , 220000 ),
   
   ( 'C013' , 'Civil Engineering'              , 32 , 'llllll' , 'P002' , 365000 ),
   ( 'C014' , 'Electro-Mechanical Engineering' , 39 , 'mmmmmm' , 'P003' , 253000 ),
   ( 'C015' , 'Quantity Surveying'             , 44 , 'nnnnnn' , 'P004' , 632000 ),
   ( 'C016' , 'Robotics and IoT'               , 32 , 'oooooo' , 'P005' , 123000 ),

   ( 'C017' , 'English Studies'                   , 39 , 'pppppp' , 'P002' , 200000 ),
   ( 'C018' , 'English (for after A/L Students)'  , 45 , 'qqqqqq' , 'P004' , 100000 ),
   ( 'C019' , 'French Language'                   , 35 , 'rrrrrr' , 'P005' , 300000 ),
   ( 'C020' , 'Proficiency in business Writing'   , 36 , 'ssssss' , 'P006' , 200000 ),
   ( 'C021' , 'Business English'                  , 36 , 'gggggg' , 'P007' , 100000 ),
   ( 'C022' , 'Literary appreciation and fiction' , 44 , 'uuuuuu' , 'P009' , 0      ),

   ( 'C023' , 'Fashion Design'                   , 35 , 'vvvvvv' , 'P002' , 120000 ),
   ( 'C024' , 'Interior Architecture- Part time' , 32 , 'wwwwww' , 'P004' , 320000 ),
   ( 'C025' , 'Music Technology (Mixing)'        , 45 , 'xxxxxx' , 'P005' , 420000 ),
   ( 'C026' , 'Foundation in Design'             , 33 , 'yyyyyy' , 'P006' , 120000 ),

   ( 'C027' , 'Psychology and Counselling' , 39 , 'AAAAAA' , 'P002' , 200000 ),
   ( 'C028' , 'Child Psychology'           , 41 , 'BBBBBB' , 'P005' , 200000 ),
   ( 'C029' , 'Psychology & Counselling'   , 35 ,  NULL    , 'P006' , 200000 ),

   ( 'C030' , 'Data Science' , 37 , 'DDDDDD' , 'P001' , 100000 ),
   ( 'C031' , 'Data Science' , 38 , 'EEEEEE' , 'P002' , 100000 ),
   ( 'C032' , 'Data Science' , 42 , 'FFFFFF' , 'P004' , 100000 ),
   ( 'C033' , 'Data Science' , 39 , 'GGGGGG' , 'P006' , 100000 ),

   ( 'C034' , 'Global Logistics'                , 39 , 'HHHHHHH' , 'P002' , 230000 ),
   ( 'C035' , 'Project Management'              , 42 , 'IIIIIII' , 'P004' , 230000 ),
   ( 'C036' , 'Business Professional Programme' , 39 , 'JJJJJJJ' , 'P005' , 150000 ),
   ( 'C037' , 'Logistics Management'            , 39 , 'KKKKKKK' , 'P006' , 120000 ),

   ( 'C038' , 'Quantity Surveying'     , 42 , 'LLLLLLL' , 'P002' , 200000 ),
   ( 'C039' , 'Professional Programme' , 39 , 'MMMMMMM' , 'P007' , 300000 ),
   ( 'C040' , 'Skill Development'      , 42 , 'NNNNNNN' , 'P009' , 0      )
;   


-- 07.Insert data into the Student table 
INSERT INTO Student (StudentID, Name, DOB, NIC, Email, PhoneNumber, Address, Country, BranchID)
VALUES
   ( 'S001' , 'Sudil Mallikarachchi' , '2002-05-07' , '200215243698' , 'mallikarachchi@gmail.com' , '076-5258889' , '45/23B Wellathota, Thihagoda Road'          , 'Sri Lanka' , 'B002' ),
   ( 'S002' , 'praveen Sankalpa'     , '2003-02-22' , '200325256552' , 'sankalpa20@yahoo.com'     , '070-5650789' , '23/2B Hakmana,Tangalle Rd, Beliatta'        , 'Sri Lanka' , 'B001' ),
   ( 'S003' , 'Kvindu Ashan'         , '2004-03-28' , '200425525255' , 'ashan86@gmail.com'        , '076-5554365' , '59 Rathanamapala Mawatha, Matara'           , 'Sri Lanka' , 'B008' ),
   ( 'S004' , 'Kavindu Suriyawanshe' , '2004-07-26' , '200426556132' , 'kvd@gmail.com'            , '076-5459011' , '92/2 Mahavila, Morathota, Akuressa'         , 'Sri Lanka' , 'B005' ),
   ( 'S005' , 'Dineth Indusara'      , '2003-10-18' , '20033253566V' , 'dineth2003@gmail.com'     , '071-5759956' , '20, Anagarika Dharmapala Mawatha, Matara '  , 'Sri Lanka' , 'B008' ),
   ( 'S006' , 'Ammar Kamil'          , '2003-08-10' , '200345225565' , 'ak@gmail.com'             , '072-5953528' , '4/1 Bathutha Rd, Matara'                    , 'Sri Lanka' , 'B003' ),
   ( 'S007' , 'Adeepa Chandira'      , '2003-03-28' , '200313565216' , 'adeepa21@gmail.com'       , '070-5051344' , '43/1A Green Crescent Godagama, Matara'      , 'Sri Lanka' , 'B007' ),
   ( 'S008' , 'Poorna Pamod'         , '2003-10-15' , '200332255655' , 'poorna@gmail.com'         , '070-5156245' , '23/1B Wasana Uyana, Kadukanna, Telijjawila' , 'Sri Lanka' , 'B004' ),
   ( 'S009' , 'Thisul Lakshitha'     , '2006-06-05' , '20065556225V' , 'thisul2006@gmail.com'     , '078-5850023' , '12/1A Okkampitiya Rd, Buttala'              , 'Sri Lanka' , 'B001' ),

   ( 'S010' , 'Jony Darshon' , '2003-11-25' , '200345483665' , 'sejans@gmail.com' , '+862562115555' , '119 Josan Street, Gulas Road, Somaliya' , 'Somaliya' , 'B001' )
;


-- 08.Insert data into the Enrollment table 
INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID, Payments, Status)
VALUES
   ( 'E001' , 'S001' , 'C001' , 1 , 'Active'    ),
   ( 'E002' , 'S002' , 'C035' , 1 , 'Active'    ),
   ( 'E003' , 'S003' , 'C012' , 1 , 'Active'    ),
   ( 'E004' , 'S004' , 'C025' , 1 , 'Completed' ),
   ( 'E005' , 'S005' , 'C005' , 1 , 'Active'    ),
   ( 'E006' , 'S006' , 'C025' , 0 , 'Active'    ),
   ( 'E007' , 'S007' , 'C040' , 1 , 'Dropped'   ),
   ( 'E008' , 'S008' , 'C009' , 1 , 'Active'    ),
   ( 'E009' , 'S009' , 'C029' , 1 , 'Completed' ),
   ( 'E010' , 'S010' , 'C032' , 0 , 'Dropped'   )
;


-- 09.Insert data into the Classroom table 
INSERT INTO Classroom (RoomNumber, Floor, Capacity)
VALUES
   ( 'R101' , 'A' , 30 ),
   ( 'R102' , 'A' , 25 ),
   ( 'R103' , 'B' , 40 ),
   ( 'R104' , 'B' , 50 ),
   ( 'R105' , 'C' , 20 ),
   ( 'R106' , 'C' , 35 ),
   ( 'R107' , 'D' , 45 ),
   ( 'R108' , 'D' , 30 ),
   ( 'R109' , 'E' , 60 ),
   ( 'R110' , 'E' , 25 )
;


-- 10.Insert data into the Equipment table
INSERT INTO Equipment (EquipmentID, EquipmentName)
VALUES
   ( 'EQ01' , 'Projector'  ),
   ( 'EQ02' , 'Whiteboard' ),
   ( 'EQ03' , 'Computers'  )
;


-- 11.Insert data into the ClassroomEquipment table
EXEC InsertDataClassroomEquipmentTable @RoomNumber = 'R101', @EquipmentID = 'EQ01';
EXEC InsertDataClassroomEquipmentTable @RoomNumber = 'R101', @EquipmentID = 'EQ02';

EXEC InsertDataClassroomEquipmentTable @RoomNumber = 'R102', @EquipmentID = 'EQ02';

EXEC InsertDataClassroomEquipmentTable @RoomNumber = 'R103', @EquipmentID = 'EQ01';
EXEC InsertDataClassroomEquipmentTable @RoomNumber = 'R103', @EquipmentID = 'EQ03';

EXEC InsertDataClassroomEquipmentTable @RoomNumber = 'R104', @EquipmentID = 'EQ02';
EXEC InsertDataClassroomEquipmentTable @RoomNumber = 'R104', @EquipmentID = 'EQ01';

EXEC InsertDataClassroomEquipmentTable @RoomNumber = 'R105', @EquipmentID = 'EQ03';

EXEC InsertDataClassroomEquipmentTable @RoomNumber = 'R106', @EquipmentID = 'EQ01';

EXEC InsertDataClassroomEquipmentTable @RoomNumber = 'R107', @EquipmentID = 'EQ02';

EXEC InsertDataClassroomEquipmentTable @RoomNumber = 'R108', @EquipmentID = 'EQ01';
EXEC InsertDataClassroomEquipmentTable @RoomNumber = 'R108', @EquipmentID = 'EQ03';

EXEC InsertDataClassroomEquipmentTable @RoomNumber = 'R109', @EquipmentID = 'EQ01';
EXEC InsertDataClassroomEquipmentTable @RoomNumber = 'R109', @EquipmentID = 'EQ02';

EXEC InsertDataClassroomEquipmentTable @RoomNumber = 'R110', @EquipmentID = 'EQ03';


-- 12.Insert data into the Schedule table 
INSERT INTO Schedule (ScheduleID, CourseID, RoomNumber, ScheduleDate, StartTime, EndTime)
VALUES
	( 'SH001' , 'C001' , 'R101' , '2024-08-01' , '09:00:00' , '10:30:00' ),
	( 'SH002' , 'C002' , 'R102' , '2024-08-02' , '11:00:00' , '12:30:00' ),
	( 'SH003' , 'C003' , 'R103' , '2024-08-03' , '14:00:00' , '15:30:00' ),
	( 'SH004' , 'C004' , 'R104' , '2024-08-04' , '10:00:00' , '11:30:00' ),
	( 'SH005' , 'C005' , 'R105' , '2024-08-05' , '13:00:00' , '14:30:00' ),
	( 'SH006' , 'C006' , 'R106' , '2024-08-06' , '15:00:00' , '16:30:00' ),
	( 'SH007' , 'C007' , 'R107' , '2024-08-07' , '09:30:00' , '11:00:00' ),
	( 'SH008' , 'C008' , 'R108' , '2024-08-08' , '16:00:00' , '17:30:00' ),
	( 'SH009' , 'C009' , 'R109' , '2024-08-09' , '12:00:00' , '13:30:00' ),
	( 'SH010' , 'C010' , 'R110' , '2024-08-10' , '08:00:00' , '09:30:00' ),
	( 'SH011' , 'C011' , 'R102' , '2024-08-11' , '17:00:00' , '18:30:00' ),
	( 'SH012' , 'C012' , 'R106' , '2024-08-12' , '13:30:00' , '15:00:00' ),
	( 'SH013' , 'C013' , 'R105' , '2024-08-13' , '10:30:00' , '12:00:00' ),
	( 'SH014' , 'C014' , 'R108' , '2024-08-14' , '15:30:00' , '17:00:00' ),
	( 'SH015' , 'C015' , 'R102' , '2024-08-15' , '11:30:00' , '13:00:00' )
;


-- 13.Insert data into the Attendance table 
INSERT INTO Attendance (AttendanceID, StudentID, CourseID, Date, EntryTime, ExitTime, Status)
VALUES
	( 'A001' , 'S001' , 'C001' , '2024-09-04' , '09:05:00' , '10:28:00' , 'Present' ),
	( 'A002' , 'S002' , 'C001' , '2024-09-04' , '09:00:00' , '10:30:00' , 'Present' ),
	( 'A003' , 'S003' , 'C001' , '2024-09-04' ,    NULL    ,    NULL    , 'Absent'  ),
	( 'A004' , 'S004' , 'C002' , '2024-09-04' , '11:02:00' , '12:30:00' , 'Present' ),
	( 'A005' , 'S005' , 'C002' , '2024-09-04' , '11:00:00' , '12:25:00' , 'Present' ),
	( 'A006' , 'S006' , 'C003' , '2024-09-04' , '14:03:00' , '15:30:00' , 'Present' ),
	( 'A007' , 'S007' , 'C003' , '2024-09-04' , '14:15:00' , '15:30:00' , 'Present' ),
	( 'A008' , 'S001' , 'C004' , '2024-09-05' , '10:00:00' , '11:30:00' , 'Present' ),
	( 'A009' , 'S004' , 'C004' , '2024-09-05' ,    NULL    ,    NULL    , 'Absent'  ),
	( 'A010' , 'S006' , 'C005' , '2024-09-05' , '13:02:00' , '14:28:00' , 'Present' ),
	( 'A011' , 'S008' , 'C005' , '2024-09-05' , '13:00:00' , '14:30:00' , 'Present' ),
	( 'A012' , 'S009' , 'C006' , '2024-09-05' , '15:07:00' , '16:25:00' , 'Present' ),
	( 'A013' , 'S010' , 'C006' , '2024-09-05' ,    NULL    ,    NULL    , 'Absent'  ),
	( 'A014' , 'S001' , 'C007' , '2024-09-06' , '09:35:00' , '11:00:00' , 'Present' ),
	( 'A015' , 'S005' , 'C007' , '2024-09-06' , '09:30:00' , '10:55:00' , 'Present' )
;


-- 14.Insert data into the Grade table 
INSERT INTO Grade (GradeID, EnrollmentID, Mark, GradeDate)
VALUES
   ( 'G001' , 'E001' , 92 , '2024-08-15' ),
   ( 'G002' , 'E002' , 85 , '2024-08-01' ),
   ( 'G003' , 'E003' , 73 , '2024-08-06' ),
   ( 'G004' , 'E004' , 58 , '2024-08-24' ),
   ( 'G005' , 'E005' , 45 , '2024-08-30' ),
   ( 'G006' , 'E006' , 29 , '2024-08-16' ),
   ( 'G007' , 'E007' , 99 , '2024-08-07' ),
   ( 'G008' , 'E008' , 53 , '2024-08-01' ),
   ( 'G009' , 'E009' , 38 , '2024-08-12' ),
   ( 'G010' , 'E010' , 22 , '2024-08-21' )
;