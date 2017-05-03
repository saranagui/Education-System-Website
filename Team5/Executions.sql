--system admin executions
--@name varchar(30), @school_address varchar(50),@phone_number varchar(30),@email varchar(40),@general_info varchar(100),@vision varchar(100), @mission varchar(100), @main_language varchar(30), @school_type varchar(30), @fees float
exec createSchool
'Pioneers', 'Aboeer, Alexandria','2469189','pioneers@gmail.com','for info please send email','physical health, equality and hard work','educate students how to be independant', 'English','international', 40000

exec addCourse
'BIO7','Biology','middle', 7,
'Biology for 7th grade',null

exec addPrerequisiteCourse 'Phy201','Phy101'

exec deleteSchool 4

--addAdmin
--mesh arfa a-test it

--system user
exec searchForSchool_name 'DSB'
exec searchForSchool_address'Zahraa al maadi, Cairo, Egypt'
exec searchForSchool_type 'international'
exec schoolsGroupedByLevels

exec allAboutASchool 2

--teachers and admins
--executing proc for signing up the teacher
exec viewTeachers 3

exec signUpTeacher 13540, 'Mohamed', 'Ahmed', 'Ali', '1-1-1988', '3A abo el Feda St., El zamalek, cairo', 'mohamed_ali123@gmail.com', 'male'
exec verifyTeachers 13540, 'm.ahmed', '12365', '3'


exec signUpTeacher 13542, 'Omar', 'Zayat', 'Mohamed', '11/1/1990', '3A abo el Feda St., El zamalek, cairo', 'omar_zayat@hotmail.com', 'male'
exec signUpTeacher 13544, 'Karim', 'Yasser', 'Roushdy', '15/12/1991', '5 15th of may bridge St., El zamalek, cairo', 'kareem_roushdy@gmail.com', 'male'

exec viewStudents '3'
--executing procedure for viewing teacher by an admin
exec viewTeachers 2 


--executing procedure for verifying a teacher by an admin
exec verifyTeachers 13540, 'mohamed_ahmed_ISEE', 'mohamedAhmed540', 2
exec verifyTeachers 13542, 'omar_zayat_ISEE', 'omarZayat542', 2


--executing procedure for viewing students who applied to the school by an admin
exec viewStudents 2



--executing procedure for verifying students by an admin
exec verifyStudents 'sara_nagy_ISEE', 'saraNagyISEE' ,2



--executing procedure for adding another admin by an admin
exec addAdmin 12389, 'Ali', 'Omar', 'Gamal' ,'11/12/1988' ,'300 Salah Salem St., Nast City, Cairo', 'ali_omar_gg@gmail.com', 'ali_omar_ISEE', 'aliOmar340', 'male', 2, 3000


--executing procedure for deleting a student
exec deleteStudents 2, 14590


--executing procedure for deleting an employee
exec deleteEmployees 2, 12389


--executing procedure for editing school details separately
exec editSchoolName 3, 'New Horizon Schools'

exec editSchoolMainLang 3 ,'French'

exec editSchoolVision 3, 'Our vision is that Countries grow by inspiring students'

exec editSchoolMission 3 ,'Our mission is to develop a whole perfectly educated generation'

exec editSchoolFees 3 ,30000

exec editSchoolType 3, 'national'

exec editSchoolAddress 3 ,'5th Settlement New Cairo 11340'

exec editSchoolPhoneNum 3, '19016'

exec editSchoolEmail 3, 'registernewHorizon@newh.edu.eg'

exec editSchoolGeneralInfo 3 ,'High quality student'


--exec procedure for posting an announcement
exec postAnnouncement '16/11/2016', 'no school acitivities' ,'no teaching activities will be held next week', 'news' ,'lobna.elmihy'


--executing creating an activity by an admin
exec createActivityWTeacher 'Final Revision maths' ,2 ,'final revisions classes will be held next week', '20/11/2016' ,'B2.201' ,'study', 1648352



--executing asssigning a course to a teacher
exec assignCourseToTeacher 9078357, 'Math501' ,2

--executing proc for assigining supervisors to other teachers
exec teachersToBeSupervisorsToOtherTeachers 1544382, 9078357


--executing


--executing procedure view my courses for a teacher
exec viewMyCourses 'nadeen.ghali'



--executing post assignment proc for a teacher
exec postAssignment 'nadeen.ghali', 'Acc101', 10, '11-25-2016' ,'Solve Questions 1.23 , 1.24 and 1.25 from text book page 103'


--executing proc for viewing solution of assignments posted by a teacher
exec viewSolution 'nadeen.ghali'


--executing proc for grading an assignment by a teacher
exec gradeAssignment 'mohamed_ahmed_ISEE', 'Math501' ,1, 17830 ,80.0


--executing proc for deleting an assignment by a teacher
exec deleteAssignments 'Math501', 1, 'mohamed_ahmed_ISEE'


--executing proc for writing reports about a student
exec writeReportsAboutStudents 'nadeen.ghali', 'sara.nagui', 'Needs to concentrate more in class and practice more at home'


--executing procedure for viewing questions asked by students of a specific teacher
exec viewQuestions 'nadeen.ghali', 'Acc101'


--executing procedure for answering questions asked by students , by a teacher
exec answerQuestions 'Acc101', 'We will answer this next class', 'nadeen.ghali', 123, 'sara.nagui'


--executing proc for viewing students of a specific teacher
exec viewStudentsITeach 'nadeen.ghali'


--executing procedure for viewing students who didn't join any activities
exec viewStudentsThatDidNotJoinActivity

--executing procedure for viewing the student who joined the most number of clubs
DECLARE @first_name varchar(30), @middle_name varchar(30), @last_name varchar(30) 
exec viewHighschoolStudentThatJoinedMostActivities @first_name OUTPUT , @middle_name OUTPUT, @last_name OUTPUT
Print @first_name + ' ' + @middle_name + ' ' + @last_name


--parent executions
exec parentSignUp 'Hanan','Emil','hananemil@yahoo.de','01233388834'
,'Al Rehab, New Cairo, Egypt','222888','hanan.emil','habibinagui'


exec addPhoneNumber 'hanan.emil','0128852152'

exec applyForChild 'hanan.emil', 12345, 'Sara Nagui', '11-24-2006','female', 1
exec applyForChild  'hanan.emil', 12345, 'Nadeen Ghali', '12-24-2006','female', 2
--exec applyForChild  'hanan.emil', 12345, 'Sara Nagui', '11-24-2006','female', 3

exec viewAccepted 12345

exec enrollChild 12345, 1
exec viewReports 12345

exec parentReportReply 'hanan.emil', 'okay'

declare @passedOrNot int
exec loginPeople 'nadeen.ghali', 'hiii', 'Teacher',  @passedOrNot output 
Print @passedOrNot

exec viewAllAssignments 'nadeen.ghali'

exec checkReviews 1