-----------------------LINE (491) MA3REFTESH A3MIL EL PRO. BAS EL BA2I ERROR FREEEEEEEEEEEEEEEEEEEEEEEEEE #NADUDE_OUT


--SYSTEM ADMIN
--“As a system administrator, I should be able to ...”

--ADDING SCHOOL TO THE SYSTEM
--1 Create a school with its information: school name, address, phone number, email, general information,vision, mission, main language, type(national, international) and fees.
go
create proc createSchool
@name varchar(30), @school_address varchar(50),@phone_number varchar(30),@email varchar(40),@general_info varchar(100),@vision varchar(100), @mission varchar(100), @main_language varchar(30), @school_type varchar(30), @fees float
as
insert into Schools (name,school_address,phone_number,email,general_info,vision,mission,main_language,school_type,fees) 
values (@name,@school_address,@phone_number,@email,@general_info,@vision,@mission,@main_language,@school_type,@fees)
declare @added_school_code int
select @added_school_code =s.school_code
from Schools s
where s.name=@name
--this is wrong, school type is international/national not high,middle,elementary


--ADDING COURSE TO THE SYSTEM
--2 Add courses to the system with all of its information: course code, course name, course level (elementary,middle, high), grade, description and prerequisite course(s).
go
create proc addCourse
@course_code varchar(30),@course_name varchar(30),@course_level varchar(30), @course_grade varchar(30),
@course_description varchar(50),@prerequisite_courses varchar(30)
as
declare @precode varchar(30)
insert into Courses (course_code,course_name,grade,clevel,course_description)
values(@course_code,@course_name,@course_grade,@course_level,@course_description)
insert into CourseHasPrerequisiteCourse (course_code1,course_code2)
values (@course_code,@prerequisite_courses)
/*if (@course_level ='high')
begin
select @precode =h.course_code
from HighCourses h inner join Courses c
on h.course_code=c.course_code
where c.course_name=@course_name
insert into HighCourses(
insert into CourseHasPrerequisiteCourse ( course_code1,course_code2)
values (@course_code,@precode)
end
else if (@course_level ='middle')
begin
select @precode =m.course_code
from MiddleCourses m
where m.course_name=@course_name
insert into MiddleCourses (course_code,course_name,course_grade,course_description,prerequisite_courses)
values(@course_code,@course_name,@course_grade,@course_description,@prerequisite_courses)
insert into CourseHasPrerequisiteCourse ( course_code1,course_code2)
values (@course_code,@precode)
end
else if (@course_level ='elementary')
begin
select @precode =e.course_code
from ElementaryCourses e
where e.course_name=@course_name
insert into ElementaryCourses (course_code,course_name,course_grade,course_description,prerequisite_courses)
values(@course_code,@course_name,@course_grade,@course_description,@prerequisite_courses)
insert into CourseHasPrerequisiteCourse ( course_code1,course_code2)
values (@course_code,@precode)
end*/


go
create proc addPrerequisiteCourse 
@course_code1 varchar(30),@course_code2 varchar(30)
as
insert into CourseHasPrerequisiteCourse ( course_code1,course_code2)
values (@course_code1,@course_code2) 


--Admin type isn't decided yet
--3 Add admins to the system with their information: first name, middle name, last name, birthdate,address, email, username, password, and gender. Given the school name, I should assign admins
--to work in this school. Note that the salary of the admin depends on the type of the school. The
--salary of an admin working in a national school is 3000 EGP, and that working in an international
--school is 5000 EGP.
go
create proc addAdmin
@first_name varchar(30),@middle_name varchar(30),@last_name varchar(30),@birth_date date,@employee_address varchar(30),
@email varchar(30),@username varchar(30),@salary int,
@password varchar(30),@gender varchar(30),@school_name varchar(30)
as
declare @school_code int 
select @school_code =s.school_code
from Schools s
where s.name=@school_name
insert into Employee (employee_username, employee_password,first_name,middle_name,last_name,gender,birth_date,employee_address,salary,email,school_code)
values (@username , @password ,@first_name,@middle_name,@last_name ,@gender ,@birth_date ,@employee_address ,@salary ,@email ,@school_code)


--4 Delete a school from the database with all of its corresponding information. Students and employees
--of this school should not be deleted from the system, but should not have a username and password
--on the system until they are assigned to a new school again.
--drop proc deleteSchool
go
create proc deleteSchool
@school_name varchar(30)
as
declare @deleted_school_code int
select @deleted_school_code =school_code
from Schools 
where name=@school_name
delete from Schools 
where name = @school_name
update Employees 
set username= null , employee_password =null
where school_code=@deleted_school_code
update Students 
set username= null , student_password =null
where school_code=@deleted_school_code



---------------------------------------------------------------------------------------------------

--SYSTEM USER
--“As a system user (registered, or not registered), I should be able to ...”

--1 Search for any school by its name, address or its type (national/international).
--1 Search for any school by its name
go
create proc searchForSchool_name
@school_name varchar(30)
as
select *
from Schools
where name = @school_name

--1 Search for any school by its address 
go
create proc searchForSchool_address
@school_address varchar(30)
as
select *
from Schools
where school_address = @school_address

--1 Search for any school by its type (national/international).
go
create proc searchForSchool_type
@school_type varchar(30)
as
select *
from Schools
where school_type = @school_type


--2 View a list of all available schools on the system categorized by their level.
--7asa eno asdo bas group by level?
go
create proc schoolsGroupedByLevels
as
select s.school_code as 'elementary_school_code',s.school_name as 'elementary_school_name',s.main_language as 'elementary_school_main_language',s.vision ,s.mission , s.fees, s.school_type ,s.school_address, s.phone_number , s.email,s.general_information
from Schools s , Elementary e
where s.school_code=e.school_code
select s.school_code as 'middle_school_code',s.school_name as 'middle_school_name',s.main_language as 'middle_school_main_language',s.vision ,s.mission , s.fees, s.school_type ,s.school_address, s.phone_number , s.email,s.general_information
from Schools s , Middle m
where s.school_code=m.school_code
select s.school_code as 'high_school_code',s.school_name as 'high_school_name',s.main_language as 'high_school_main_language',s.vision ,s.mission , s.fees, s.school_type ,s.school_address, s.phone_number , s.email,s.general_information
from Schools s , High h
where s.school_code=h.school_code


--3 View the information of a certain school along with the reviews written about it and teachers teaching in this school.
go
create proc allAboutASchool
@school_code int 
as
begin
select S.*,em.*, T.* from Schools S, Employees em,Teachers T,p.review
where S.school_code=@school_code and em.school_code=@school_code and em.ssn=T.ssn and p.school_code=@school_code
end



--------------------------------------------------------------------------------------------------------------

--ADMINISTRATOR
--“As an administrator, I should be able to ...”
--this part is done as the old desc of employee (username is the pk of the table however it should be modified


--1 View and verify teachers who signed up as employees of the school I am responsible of, and assign
--to them a unique username and password. The salary of a teacher is calculated as follows: years of
--experience * 500 EGP.
go
create proc viewTeachers
@school_code varchar(30)
as
select em.*,t.*
from Employees em ,Teachers t
where school_code=@school_code and em.ssn=t.ssn

--1 View and verify teachers who signed up as employees of the school I am responsible of, and assign
--to them a unique username and password. The salary of a teacher is calculated as follows: years of
--experience * 500 EGP.
go
create proc verifyTeachers
@ssn int, @teacher_username varchar(30),@teacher_password varchar(30),@teacher_school_code varchar(30)
as
declare @years_of_experience int
select @years_of_experience=T.years_of_experience
from Teachers T where T.ssn=@ssn
update Employees 
set username = @teacher_username, employee_password = @teacher_password,salary = 500*@years_of_experience
where  school_code=@teacher_school_code and ssn=@ssn


--2 View and verify students who enrolled to the school I am responsible of, and assign to them a unique username and password.
go
create proc viewStudents
@school_code varchar(30)
as
select * from Students where school_code=@school_code;

--do we need to check wether the new username is uique or not?!
--2 View and verify students who enrolled to the school I am responsible of, and assign to them a unique username and password.
go
create proc verifyStudents
@student_username varchar(30),@student_password varchar(30),@student_school_code varchar(30)
as
update Students
set username=@student_username
where school_code=@student_school_code;
update Students
set student_password=@student_password
where school_code=@student_school_code;


--3 Add other admins to the school I am working in. An admin has first name, middle name, last name,
--birthdate, address, email, username, password, and gender. Note that the salary of the admin
--depends on the type of the school.
go
create proc addAdministrator
@first_name varchar(30),@middle_name varchar(30),@last_name varchar(30),@birth_date date,@employee_address varchar(30),
@email varchar(30),@username varchar(30),@password varchar(30),@gender varchar(30),@school_code int, @salary int
as
insert into Employees (username, employee_password,first_name,middle_name,last_name,gender,birthday,employee_address,salary,email,school_code)
values (@username , @password ,@first_name,@middle_name,@last_name ,@gender ,@birth_date ,@employee_address ,@salary ,@email ,@school_code)
insert into Administrators values (@username)


--should we delete them wala set their username to null???
--4 Delete employees from the system.
go
create proc deleteEmployees
@school_code int, @ssn int
as
delete from Employees
where ssn=@ssn and school_code=@school_code

--4 Delete students from the system.
go
create proc deleteStudents
@school_code int, @student_SSN int
as
delete from Students
where ssn=@student_SSN and school_code=@school_code


--5 Edit the information of the school I am working in.
go
create proc editSchoolName
@school_code int ,@new_entry varchar(30)
as
update Schools
set name = @new_entry
where school_code=@school_code

--5 Edit the information of the school I am working in.
go
create proc editSchoolMainLang
@school_code int ,@new_entry varchar(30)
as
update Schools
set main_language = @new_entry
where school_code=@school_code

--5 Edit the information of the school I am working in.
go
create proc editSchoolVision
@school_code int ,@new_entry varchar(30)
as
update Schools
set vision = @new_entry
where school_code=@school_code

--5 Edit the information of the school I am working in.
go
create proc editSchoolMission
@school_code int ,@new_entry varchar(30)
as
update Schools
set mission = @new_entry
where school_code=@school_code

--5 Edit the information of the school I am working in.
go
create proc editSchoolFees
@school_code int ,@new_entry varchar(30)
as
update Schools
set fees = @new_entry
where school_code=@school_code

--5 Edit the information of the school I am working in.
go
create proc editSchoolType
@school_code int ,@new_entry varchar(30)
as
update Schools
set school_type = @new_entry
where school_code=@school_code

--5 Edit the information of the school I am working in.
go
create proc editSchoolAddress
@school_code int ,@new_entry varchar(50)
as
update Schools
set school_address = @new_entry
where school_code=@school_code

--5 Edit the information of the school I am working in.
go
create proc editSchoolPhoneNum
@school_code int ,@new_entry varchar(30)
as
update Schools
set phone_number = @new_entry
where school_code=@school_code

--5 Edit the information of the school I am working in.
go
create proc editSchoolEmail
@school_code int ,@new_entry varchar(30)
as
update Schools
set email = @new_entry
where school_code=@school_code

--5 Edit the information of the school I am working in.
go
create proc editSchoolGeneralInfo
@school_code int ,@new_entry varchar(30)
as
update Schools
set general_info = @new_entry
where school_code=@school_code

--6 Post announcements with the following information: date, title, description and type (events, news,trips ...etc).
go
create proc postAnnouncement
@date datetime ,@title varchar(30),@description varchar(30),@type varchar(30),@administrator_username varchar(30)
as
insert into Announcements
values (@date,@title,@description,@type,@administrator_username)


--7 Create activities and assign every activity to a certain teacher. An activity has its own date, location
--in school, type, equipment(if any), and description.
go
create proc createActivityWTeacher
@activity_name varchar(30),
@school_code int,
@activity_description varchar(100),
@activity_date datetime,
@activity_location varchar(50),
@activity_type varchar(100),
@administrator_ssn int,
@teacher_ssn int
as
insert into Activities values (@activity_name,
@school_code,
@activity_description,
@activity_date,
@activity_location,
@activity_type,
@administrator_ssn);
insert into Activity_assignedBy_Administrator_to_Teacher values (@activity_name,
@school_code,
@administrator_ssn,
@teacher_ssn);


--8 Change the teacher assigned to an activity.
go
create proc changeTeacherForActivity
@activity_name varchar(30),
@school_code int,
@administrator_ssn int,
@teacher_ssn int
as
update Activity_assignedBy_Administrator_to_Teacher
set teacher_ssn =@teacher_ssn
where name =@activity_name and school_code=@school_code and administrator_ssn =@administrator_ssn

	--create proc assignCourseToTeacher
	--@school_code int,
	--@teacher_ssn int,
	--@course_code int
	--as
	--update  Courses 
	--set teacher_ssn=@teacher_ssn
	--where school_code=@school_code and course_code=@course_code and exist (Grades_offeredBy_Schools inner join Courses on Courses.grade=Grades_offeredBy_Schools.grade) 
	
	--same proc bs hasab fatya number 2 mn nadeen

--9 Assign teachers to courses that are taught in my school based on the levels it offers.
go
create proc assignCourseToTeacher
@teacher_ssn int,
@course_code int,
@school_code int
as
update Courses_taughtBy_Teachers
set teacher_ssn=@teacher_ssn
where course_code=@course_code and( exists (select * from Grades_offeredBy_Schools 
inner join Courses on Courses.grade=Grades_offeredBy_Schools.grade_offered and school_code=@school_code));


--10 Assign teachers to be supervisors to other teachers.	
go
create proc teachersToBeSupervisorsToOtherTeachers
@teacher_ssn int ,@supervisor_ssn int
as
update Teachers_supervisedBy_Teachers
set supervisor_ssn =@supervisor_ssn
where teacher_ssn=@teacher_ssn

--11 Accept or reject the application submitted by parents to their children.
--11 Accept the application submitted by parents to their children.
go
create proc acceptApplication
@applied_child_ssn int,
@school_code int,
@username varchar(30),
@student_password varchar(30)
as
delete from Children_appliedForBy_Parents_at_Schools
where ssn=@applied_child_ssn;
insert into Schools_accept_Students values (@school_code,@applied_child_ssn);

--11 Reject the application submitted by parents to their children.
go
create proc rejectApplications
@applied_child_ssn int
as
delete from Children_appliedForBy_Parents_at_Schools
where ssn=@applied_child_ssn



-------------------------------------------------------------------------------------------------------------

--TEACHER stories
--“As a teacher, I should be able to ...”


--1 Sign up by providing my first name, middle name, last name, birthdate, address, email, and gender.
--Teacher signing up on the system 
go
create proc signUpTeacher 
@ssn int , @first_name varchar(30) , @middle_name varchar(30), @last_name varchar(30), @birth_date datetime,
	@address varchar(50), @email varchar(40), @gender varchar(30)
as
if(@ssn is null or @first_name is null or @middle_name is null or @last_name is null 
or @birth_date is null or @email is null or @gender is null)
print 'all the inputs are required for signing up , we can''t accept nulls'
else 
begin
insert into Employees(ssn, first_name, middle_name, last_name, birthday, employee_address, email, gender)
	values(@ssn, @first_name, @middle_name, @last_name, @birth_date, @address, @email, @gender)
insert into Teachers(ssn)
	values(@ssn)
end


--2 View a list of courses’ names I teach categorized by level and grade.
--YOU NEED TO ADD LEVEL ATTRIBUTE TO THE COURSES TABLE
--Viewing the list of all courses for a teacher
go
create proc viewMyCourses 
@username varchar(30)
as 
select C.*
from Courses C inner join Employees E
on C.teacher_ssn=E.ssn
where E.username=@username
order by C.clevel, C.grade 


--3 Post assignments for the course(s) I teach. Every assignment has a posting date, due date and content.
--Teacher posting an assignment 
go
create proc postAssignment 
@username varchar(30) , @course_code varchar(30), @assignment_number int, @post_date datetime, @due_date datetime, @content varchar(200)
as
if(@post_date is null or @due_date is null or @content is null or @course_code is null or @assignment_number is null)
print 'each assignment must have start date, due date and content, they can''t be nulls';
else
begin
declare @ssn int
select @ssn=E.ssn
from Employees E 
where E.username=@username
insert into Assignments (course_code2, assignment_number, posting_date, due_date, content, teacher_that_posts_ssn)
	values(@course_code, @assignment_number, @post_date, @due_date, @content, @ssn)
end


--4 View the students’ solutions for the assignments I posted ordered by students’ ids.
-- YOU NEED TO ADD ID ATTRIBUTE TO STUDENT TABLE
-- Teacher viewing solutions for assignments earlierly posted by him/her
go
create proc viewSolution 
@username varchar(30)
as
Select S.id , A.*
from Students S, Assignments A inner join Employees E
on A.teacher_that_posts_ssn=E.ssn
where E.username=@username and A.ssn=S.ssn and A.solution is not null
order by S.id


--5 Grade the students’ solutions for the assignments I posted.
--Teacher grading the student's solution for an assignment
go
create proc gradeAssignment 
@username varchar(30), @course_code varchar(30), @assignment_number int, @student_ssn int, @grade float
as
begin
declare @ssn int
select @ssn=E.ssn
from Employees E 
where E.username=@username
UPDATE Assignments
SET mark=@grade 
where course_code2=@course_code AND solution is not null AND teacher_that_posts_ssn=@ssn AND assignment_number=@assignment_number AND ssn=@student_ssn
end


--6 Delete assignments.
--Delete assignments
go
create proc deleteAssignments
@course_code varchar(30),@assignment_number int, @username varchar(30)
as
begin
declare @teacher_that_posts_ssn int
select @teacher_that_posts_ssn=E.ssn
from Employees E 
where E.username=@username
delete from Assignments
where course_code2=@course_code and assignment_number=@assignment_number and teacher_that_posts_ssn=@teacher_that_posts_ssn
end


--7 Write monthly reports about every student I teach. A report is issued on a specific date to a specific
--student and contains my comment.
--Write monthly reports
go
create proc writeReportsAboutStudents
@username varchar(30), @ssn int, @teachers_comment varchar(40)
as
begin
declare @teacher_ssn int
select @teacher_ssn=E.ssn
from Employees E 
where E.username=@username
if(@teacher_ssn is null or @ssn is null or @teachers_comment is null)
print 'all the inputs are required for writing a report , we can''t accept nulls'
else 
begin
declare @issue_date date
declare @parent_username varchar(30)
select @parent_username=P.username
from Children_appliedForBy_Parents_at_Schools P
where P.ssn=@ssn
set @issue_date=CURRENT_TIMESTAMP
insert into Reports (teacher_ssn,ssn,teachers_comment,issue_date,parent_username) values (@teacher_ssn,@ssn,@teachers_comment,@issue_date,@parent_username)
insert into Reports_about_Students_issuedBy_Teachers(teacher_ssn,ssn) values (@teacher_ssn,@ssn)
end
end


--8 View the questions asked by the students for each course I teach.
--view questions
go
create proc viewQuestions 
@teacher_username varchar(30)
as
Select  Q.course_code, Q.question_id, Q.question_text
from Courses_taughtBy_Teachers C inner join Employees E
on C.teacher_ssn=E.ssn inner join Questions Q
on Q.course_code=C.course_code
where C.teacher_ssn=E.ssn and Q.question_text is not null and Q.course_code=C.course_code and E.username=@teacher_username


--9 Answer the questions asked by the students for each course I teach.
--answerQuestion
--not done
go
create proc answerQuestions 
@course_code varchar(30),@answerText varchar(100),@username varchar(30)
as
begin
declare @teacher_ssn int
select @teacher_ssn=E.ssn
from Employees E 
where E.username=@username
if(@course_code is null or @answerText is null or @teacher_ssn is null)
print 'each Answer must have a course and a question, they can''t be nulls';
else
begin
declare @ssn int
declare @question_id int
select @ssn=S.ssn, @question_id=S.question_id
from (Select  Q.*
from Courses C, Questions Q
where C.teacher_ssn=@teacher_ssn and Q.question_text is not null and Q.course_code=C.course_code --and Q.course_code=@course_code
) S
where S.course_code=@course_code
insert into Answers(question_id, ssn,course_code,answerText,teacher_ssn)
values(@question_id,@ssn,@course_code,@answerText,@teacher_ssn)
end
end
--view students I teach categorized by their grade and ordered by their names
--ana ghayart de ya brooozzz #nadeenGhaloInZaHouse


--10 View a list of students that i teach categorized by the grade and ordered by their name (first name and last name).
go
create proc viewTeacherStudents @username varchar(30)
as
begin
select S.* 
from Students S inner join Courses_TakenBy_Students CS
on S.ssn=CS.ssn inner join Courses_taughtBy_Teachers CT
on CS.course_code= CT.course_code inner join Employees E
on CT.teacher_ssn=E.ssn
where E.username=@username
end
/*go
create proc viewStudentsITeach
@username varchar(30)
as
begin
declare @teacher_ssn int
select @teacher_ssn=E.ssn
from Employees E 
where E.username=@username
select S.*
from Students S, Courses_TakenBy_Students CS, Courses C
where CS.ssn=S.ssn and CS.course_code=C.course_code and C.teacher_ssn=@teacher_ssn
group by S.grade
order by S.first_name, S.last_name
end*/


--11 View a list of students that did not join any activity.
--View a list of students that did not join any activity.
go
create proc viewStudentsThatDidNotJoinActivity
as
begin
select S.*
from Students S
where S.ssn not in (select AAS.ssn
from Activity_appliedToBy_Students AAS)
end


--12 Display the name of the high school student who is currently a member of the greatest number of clubs.
--Display the name of the high school student who is currently a member of the greatest number of clubs
go
create proc viewHighschoolStudentThatJoinedMostActivities
@first_name  varchar(30) output, @middle_name varchar(30)  output, @last_name varchar(30)  output
as
begin
select @first_name=S.first_name, @middle_name=S.middle_name, @last_name=S.last_name
from Students S, Activity_appliedToBy_Students AAS
where S.ssn=AAS.ssn 
group by S.ssn
having count(AAS.name)>=All
(
select count(AAS1.name)
from Students S1,Activity_appliedToBy_Students AAS1
where S1.ssn=AAS1.ssn 
group by S1.ssn
)
end



------------------------------------------------------------------------------------------------------
------------------------nadeen--------------------------------------------

--PARENT STORIES
--“As a parent, I should be able to ...”



--1 Sign up by providing my name (first name and last name), contact email, mobile number(s), address,
--home phone number, a unique username and password.
go
create proc parentSignUp
@first_name varchar(30),@last_name varchar(30),@email varchar(40),@mobile_number varchar(30)
,@parents_address varchar(50),@home_number varchar(30),@username varchar(30),@parent_password varchar(30)
as
insert into Parents(first_name,last_name,email,parents_address,home_number,username,parent_password)
values(@first_name,@last_name ,@email,@parents_address,@home_number,@username,@parent_password)
insert into Parent_mobiles(username,mobile_number)
values(@username,@mobile_number)

--1 Sign up by providing my name (first name and last name), contact email, MOBILE NUMBER(s), address,
--home phone number, a unique username and password.
--1 providing mobile numbers
go
create proc addPhoneNumber @username varchar(30),@mobile_number varchar(30)
as
insert into Parent_mobiles(username,mobile_number)
values(@username,@mobile_number)



--2 Apply for my children in any school. For each child I should provide his/her social security number
--(SSN), name, birthdate, and gender.
go
create proc applyForChild @ssn int, @name varchar(30), @birthday datetime,@gender varchar(30), @school_code int
as
insert into Children(ssn,name,birthday,gender)
values (@ssn, @name, @birthday, @gender)
insert into Children_appliedForBy_Parents_at_Schools(school_code,ssn)
values (@school_code, @ssn)



--3 View a list of schools that accepted my children categorized by child
go
create proc viewAccepted @ssn int
as
begin
select school_code
from Schools_accept_Students
where ssn=@ssn
end



--4 Choose one of the schools that accepted my child to enroll him/her. The child remains unverified
--(no username and password, refer to user story 2 for the administrator) until the admin verifies him.
go
create proc enrollChild @ssn int, @school_code int
as 
if(@school_code in (select school_code from Schools_accept_Students where ssn=@ssn))
begin
declare @name varchar(30)
declare @grade int
select @name=c.name, @grade=(c.age-5)
from Children c
where c.ssn=@ssn
insert into Students(ssn, grade, school_code)
values (@ssn,@grade,@school_code)
end
else print 'ERROR'


--5 View reports written about my children by their teachers
go
create proc viewReports @ssn int
as
select T.username, R.teachers_comment
from Teachers T join Employee E 
on T.ssn=E.ssn
join Reports R
on T.ssn=R.teacher_ssn
where R.ssn=@ssn

--6/*Reply to reports written about my children by their teachers*/
go
create proc parentReportReply @parent_username varchar(30), @parent_reply varchar(40), @report_id int
as
update Reports
set parent_reply=@parent_reply
where Reports.parent_username=@parent_username and report_id=@report_id

--7/*View a list of all schools of all my children ordered by its name.*/
go
create proc viewChildrenSchools @parent_username varchar(30)
as 
begin
select C.name, S.name
from Children_appliedForBy_Parents_at_Schools A join Children C
on A.ssn=C.ssn join School S
on C.school_code=S.school_code
where A.parent_username=@parent_username and C.school_code=S.school_code
order by S.name
end

--8/*View the announcements posted within the past 10 days about a school if one of my children is
--enrolled in it.*/
go
create proc viewAnnouncements @parent_username varchar(30)
as
begin
select C.name, A.title, A.announcement_description 
from Annoncements_inform_Parents_and_Students X join Student S
on X.ssn=S.ssn join  Announcements A
on A.announcement_date=X.announcement_date and A.title=X.title
where X.username=@parent_username and day(current_timestamp)-day(A.announcement_date)<=10
and year(current_timestamp)=year(A.announcement_date)
end

--9/*Rate any teacher that teaches my children.*/

go
create proc rateTeacher @parent_username varchar(30), @teacher_username varchar(30), @rating int
as
if(@teacher_username in(select E.username from Children_appliedForBy_Parents_at_Schools X 
join School S on S.school_code=X.school_code
join Teacher T on T.school_code= S.school_code
join Employee E on E.school_code= S.school_code
join Courses_taughtBy_Teachers CT on CT.teacher_ssn=T.ssn
join Courses_TakenBy_Students CS on CS.course_code= CT.course.code
where X.parent_username=@parent_username ))
begin
if(@rating<=10 and @rating>=0)
begin
declare @t_ssn int
select @t_ssn=Employees.ssn
from Employees
where Employees.username=@teacher_username

insert into Parents_canRate_Teachers (parent_username,teacher_ssn,rating)
values( @parent_username,@t_ssn, @rating)
end
else print 'Enter rating between 0-10'
end

--10/*Write reviews about my children’s school(s).*/

go
create proc writeReviews @parent_username varchar(30), @school_code int, @review varchar(50)
as
if(@parent_username in(select X.username from Students S 
join Children_appliedForBy_Parents_at_Schools X  on S.ssn=X.ssn
where S.username is not null and @school_code=S.school_code))
insert into Parents_writeReviewsAbout_Schools(parent_username,school_code,review)
values (@parent_username, @school_code, @review)
else print 'ERROR'

--11/*Delete a review that i have written.*/
go
create proc deleteReview @parent_username varchar(30), @school_code int
as
delete from Parents_writeReviewsAbout_Schools
where parent_username=@parent_username and school_code=@school_code

--12/* View the overall rating of a teacher, where the overall rating is calculated as the average of ratings
--provided by parents to that teacher.*/
go
create proc viewOverallTeacherRating @teacher_ssn varchar(30), @average float output
as 
select @average=avg(R.rating)
from Teachers T  join Parents_canRate_Teachers R 
on T.teacher_ssn=R.teacher_ssn
group by T.teacher_ssn
having R.teacher_ssn=@teacher_ssn


--13/* View the top 10 schools with the highest number of reviews or highest number of enrolled students.
--This should exclude schools that my children are enrolled in.*/
go
create proc viewTopTenSchools
as
begin
select top 10 S.name, S.school_code
from Schools S join Parents_writeReviewsAbout_Schools R
on S.school_code=R.school_code
group by S.school_code
order by count(*) desc
end

--14/*Find the international school which has a reputation higher than all national schools, i.e. has the
--highest number of reviews*/
go
create proc highReputationSchools @school_name varchar(30) output
as
select @school_name=S.name
from Parents_writeReviewsAbout_Schools PR join Schools S
on PR.school_code=S.school_code 
where S.school_type='international'
group by S.name
having count(*)>= All(select count(*)
					from Parents_writeReviewsAbout_Schools PR join Schools S
					on PR.school_code=S.school_code 
					group by S.name)


-----------------------------------------------------------------------------------------------

--STUDENT STORIES
--“As an enrolled student, I should be able to ...”




--2 View a list of courses’ names assigned to me based on my grade ordered by name.
go
create proc viewCourses @s_ssn int
as
begin
select c.course_name
from Courses c, Students s
where s.ssn=@s_ssn and c.grade=s.grade
order by c.course_name
end


--3 Post questions I have about a certain course.
go
create proc postQuestion @c_code varchar(30),@q_question varchar(100),@s_ssn int
as
begin
insert into Questions (course_code,question_text,ssn)
values(@c_code,@q_question,@s_ssn)
end


--4 View all questions asked by other students on a certain course along with their answers.
go
create proc viewQuestionAndAnswer @s_ssn int, @c_code varchar(30)
as
begin
select q.question_text, a.answer_text
from Questions q, Answers a,Students s
where q.course_code=@c_code and a.course_code=@c_code and s.ssn <> s_ssn
end


--5 View the assignments posted for the courses I take.
go
create proc viewAssignments @s_ssn int
as
begin
select a.course_code2,a.assignment_number,a.content,a.due_date,a.posting_date
from Assignments a, Students s, Courses c
where a.course_code2 =c.course_code and c.grade=s.grade and s.ssn=@s_ssn
end


--6 Solve assignments posted for courses I take.
go
create proc solveAssignment @c_code varchar(30), @number int,@s_ssn int, @sol varchar(200)
as
begin
insert into Assignments(course_code2,assignment_number,ssn,solution)
values(@c_code,@number,@s_ssn,@sol)
end


--7 View the grade of the assignments I solved per course.
go
create proc viewAssignmentsGrades @s_ssn int
as
begin
select a.course_code2,a.assignment_number,a.mark
from Assignments a, Students s, Courses c
where a.course_code2=c.course_code and s.grade=c.grade and s.ssn=@s_ssn
group by a.course_code2, a.assignment_number,a.mark
end


--8 View the announcements posted within the past 10 days about the school I am enrolled in.
go
create proc viewAnnouncements10Days @s_ssn int
as
begin
select a.annoucement_date, a.title, a.annoucement_description, a.annoucement_type
from Annoucements a,Students s, Administrator ad
where s.ssn=@s_ssn and (day(current_timestamp)-day(a.annoucement_date))<10 and ad.administrator_ssn =a.ssn
order by a.annoucement_date
end


--9 View all the information about activities offered by my school, as well as the teacher responsible for it.
go
create proc viewActivityAndTeacher @s_ssn int
as
begin
select a.name,a.activity_description,a.activity_date,a.activity_location,a.activity_type,e2.first_name,e2.middle_name,e2.last_name 
from Students s inner join Activities a on s.school_code=a.school_code and s.ssn=@s_ssn 
inner join Employees e on a.school_code=e.school_code and a.administrator_ssn=e.ssn
inner join Activity_assignedBy_Administrator_to_Teacher aa on e.ssn=aa.administrator_ssn 
inner join Employees e2 on aa.teacher_ssn = e2.ssn
end


--10 Apply for activities in my school on the condition that I can not join two activities of the same type on the same date.
--a3ml el condition ezai???
go
create proc joinActivity @s_ssn int,@a_name varchar(30),@a_school_code int
as
begin
insert into Activity_appliedToBy_Student
values(@s_ssn,@a_name,@a_school_code)
end


--11 Join clubs offered by my school, if I am a highschool student.
go
create proc joinClub @s_ssn int,@s_grade int,@c_name varchar(30), @s_code int, @c_code int
as
begin
if((@s_grade=10 or @s_grade=11 or @s_grade=12) and @s_code=@c_code)
insert into Clubs_joinedBy_Students
values(@s_ssn,@c_name,@c_code)
end

--12 Search in a list of courses that i take by its name or code.
go
create proc searchCourseName @s_ssn int, @c_name varchar(30)
as
begin
select *
from Courses c inner join Courses_TakenBy_Students t on c.course_code=t.course_code
inner join Student s on s.ssn=t.ssn 
where c.course_name=@c_name and s.ssn=@s_ssn
end


--12 Search in a list of courses that i take by its name or code.
go
create proc searchCourseCode @s_ssn int, @c_code varchar(30)
as
begin
select *
from Courses c inner join Courses_TakenBy_Students t on c.course_code=t.course_code
inner join Student s on s.ssn=t.ssn 
where c.course_code=@c_code and s.ssn=@s_ssn
end

