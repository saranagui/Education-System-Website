--create database EgyptEductationSystem
--drop database EgyptEductationSystem

--check on constraints writen in eerd like grade>7 w7agat keda idk how to do them!!!
---------------------------- 
--1
--drop table Schools
create table Schools(
	school_code int identity,
	name varchar(30),
	main_language varchar(30),
	vision varchar(100),
	mission varchar(100),
	fees float,
	school_type varchar(30),
	school_address varchar(50),
	phone_number varchar(30),
	email varchar(40),
	general_info varchar(100),
	primary key(school_code)
)
--2
create table Grades_offeredBy_Schools(
	grade_offered int,
	school_code int,
	primary key(grade_offered,school_code),
	foreign key(school_code) references Schools(school_code) on delete cascade on update cascade
)
--3
create table Middle_Schools(
	school_code int,
	primary key(school_code),
	foreign key(school_code) references Schools(school_code) on delete cascade on update cascade
	
	--we should check/do the constraints of the grade!
)
--4
create table Elementary_Schools(
	school_code int,
	primary key(school_code),
	foreign key(school_code) references Schools(school_code) on delete cascade on update cascade
)
--5
create table Supplies(
	supply varchar(30),
	school_code int,
	primary key(supply, school_code),
	foreign key(school_code) references Elementary_Schools(school_code) on delete cascade on update cascade
)
--6
create table High_Schools(
	school_code int,
	primary key(school_code),
	foreign key(school_code) references Schools(school_code) on delete cascade on update cascade
)
--7
create table Employees(
	ssn int,
	username varchar(30),
	employee_password varchar(30),
	first_name varchar(30),
	middle_name varchar(30),
	last_name varchar(30),
	gender varchar(30),
	birthday datetime,
	employee_address varchar(50),
	salary float,
	email varchar(40),
	school_code int,
	primary key(ssn),
	foreign key(school_code) references Schools(school_code) on delete cascade on update cascade
)
--8
create table Teachers(
	ssn int,
	start_date_of_teaching datetime,
	years_of_experience as (year(current_timestamp)-year(start_date_of_teaching)),
	primary key(ssn),
	foreign key(ssn) references Employees(ssn) on delete cascade on update cascade
)
--9
--contraint on 15 years of exp missing 
create table Teachers_supervisedBy_Teachers(
	teacher_ssn int,--this has to represent the teacher being supervised or else it would not be unique
	supervisor_ssn int,
	primary key(teacher_ssn),
	foreign key(teacher_ssn) references Teachers(ssn) on delete cascade on update cascade,
	foreign key(supervisor_ssn) references Teachers(ssn) 
)
--10
create table Administrators(
	administrator_ssn int,
	primary key(administrator_ssn),
	foreign key (administrator_ssn) references Employees(ssn) on delete cascade on update cascade
)
--11
create table Clubs(
	name varchar(30),
	school_code int,
	purpose varchar(100),
	primary key(name,school_code),
	foreign key(school_code) references High_Schools(school_code) on delete cascade on update cascade
)
--12 
--drop table Children
create table Children(
	ssn int,
	name varchar(30),
	birthday datetime check((year(current_timestamp)-year(birthday))>6),
	gender varchar(30),
	age as(year(current_timestamp)-year(birthday)),
	primary key(ssn)
)
--13 -> 24
-- i removed NOT NULL 3and password since the student is only verified when the admin enters a UN and Pass
create table Students
(
	ssn int, 
	username varchar(30),
	student_password varchar(30),
	--age int,
	id int unique identity,
	grade int,	
	school_code int NOT NULL,
	primary key(ssn),
	foreign key (school_code) references Schools(school_code)  on update cascade on delete cascade,
	foreign key (ssn) references Children(ssn)  on update cascade on delete cascade
)

create table Schools_accept_Students(
	school_code int,
	ssn int,
	primary key(school_code,ssn),
	foreign key(school_code) references Schools(school_code) on delete cascade on update cascade,
	foreign key(ssn) references Children(ssn) on delete cascade on update cascade,
)
--15 --note club should be dependent on school in its primary key -> weak entity!
create table Clubs_joinedBy_Students(
	ssn int,
	name varchar(30),
	school_code int,
	primary key (name,school_code,ssn),
	foreign key (name,school_code) references Clubs(name,school_code) on delete cascade on update cascade,
	foreign key (ssn) references Students(ssn) on delete no action on update no action
)
--16
--why is the attribute review here?
create table Parents
(
	username varchar(30),
	parent_password varchar(30),
	first_name varchar(30),
	last_name varchar(30),
	email varchar(40),
	parents_address varchar(50),
	home_number varchar(30),
	review varchar(40),
	school_code int,
	primary key(username), 
	foreign key (school_code)references Schools(school_code) on delete cascade on update cascade
)
--17
create table Parent_Mobiles
(
	mobile_number varchar(30),
	username varchar(30), 
	primary key(username,mobile_number),
	foreign key (username)references Parents(username) on update cascade on delete cascade,

)
--18
create table Children_appliedForBy_Parents_at_Schools
(
	school_code int,
	ssn int, 
	username varchar(30),
	primary key(school_code,ssn),
	foreign key(school_code) references Schools(school_code) on update cascade on delete cascade,
	foreign key(ssn) references Children(ssn)  on update cascade on delete cascade,
	foreign key (username)references Parents(username)  on update no action on delete no action
)
--19 (7asaha redundant)
create table Parents_BrowseFor_Schools
(
	school_code int, 
	username varchar(30), 
	primary key(school_code),
	foreign key(school_code) references Schools(school_code),
	foreign key(username) references Parents(username)  on update cascade on delete no action
)
--20
--i added the attribute rating that holds the actual rating posted by parent
create table Parents_canRate_Teachers
(
	parent_username varchar(30),
	teacher_ssn int,
	rating int check (rating<=10),
	primary key (parent_username,teacher_ssn), 
	foreign key(parent_username) references Parents(username)   on update no action on delete no action,
	foreign key(teacher_ssn) references Teachers(ssn)  on update cascade on delete cascade,	
)
--21
create table Announcements
(
	announcement_date date,
	title varchar(30),
	announcement_description varchar(100),
	announcement_type varchar(30),
	ssn int, 
	primary key (announcement_date,title),
	foreign key(ssn) references Administrators(administrator_ssn)on update cascade on delete cascade,
)
--22
create table Announcements_inform_Parents_and_Students
(
	announcement_date date, 
	title varchar(30), 
	ssn int, 
	username varchar(30), 
	primary key(announcement_date,title,ssn,username),
	foreign key(username) references Parents(username)  on update no action on delete no action,
	foreign key(announcement_date,title) references Announcements(announcement_date,title)on update cascade on delete cascade,
	foreign key(ssn) references Students(ssn)  on update cascade on delete cascade,
)	
--23
--i added the attribute parent_reply
create table Reports
(
	report_id int identity,
	teacher_ssn int, 
	ssn int,
	teachers_comment varchar(40),
	issue_date date, 
	parent_username varchar(30),
	parent_reply varchar(40),
	primary key(report_id,teacher_ssn,ssn),
	foreign key(parent_username) references Parents(username)  on update no action on delete no action,
	foreign key(teacher_ssn) references Teachers(ssn)  on update cascade on delete cascade,
	foreign key(ssn) references Students(ssn)  on update cascade on delete cascade
)
--24
--redundant table
create table Reports_about_Students_issuedBy_Teachers
(
	report_id int, 
	ssn int, 
	teacher_ssn int,
	primary key(report_id,ssn,teacher_ssn), 	
	foreign key(report_id,teacher_ssn,ssn) references Reports(report_id,teacher_ssn,ssn)on update cascade on delete cascade
)

------------------------------------------- 25--->29

create table Activities(
	name varchar(30),
	school_code int,
	activity_description varchar(100),
	activity_date datetime,
	activity_location varchar(50),
	activity_type varchar(100),
	administrator_ssn int,
	primary key(name,school_code),
	foreign key(school_code) references Schools(school_code) on update cascade on delete cascade,
	foreign key(administrator_ssn) references Administrators(administrator_ssn) on update no action on delete no action,
	--teacher wala admin wala eh?
)

create table Activity_assignedBy_Administrator_to_Teacher(
	name varchar(30),
	school_code int,
	administrator_ssn int,
	teacher_ssn int,
	primary key(name,school_code,administrator_ssn,teacher_ssn),
	foreign key(teacher_ssn) references Teachers(ssn) on update no action on delete no action,
	foreign key(administrator_ssn) references Administrators(administrator_ssn) on update no action on delete no action,
	foreign key(name,school_code) references Activities(name,school_code) on update cascade on delete no action,
)

create table Equipment(
	name varchar(30),
	school_code int,
	equipment varchar(30),
	primary key(equipment,name,school_code),
	foreign key(name,school_code) references Activities(name,school_code) on update cascade on delete cascade,
)

create table Activity_appliedToBy_Student(
	ssn int,
	name varchar(30),
	school_code int,
	primary key(ssn,name,school_code),
	foreign key(ssn) references Students(ssn) on update cascade on delete cascade,
	foreign key(name,school_code) references Activities(name,school_code) on update no action on delete no action,
)

create table Courses(
	course_code varchar(30),
	course_description varchar(100),
	grade int,
	clevel varchar(30),
	course_name varchar(30),
	teacher_ssn int,
	primary key(course_code),
	foreign key(teacher_ssn) references Teachers(ssn) on update cascade on delete cascade
)

create table Courses_havePrerequisite_Courses(
	course_code1 varchar(30),
	course_code2 varchar(30),
	primary key(course_code1,course_code2),
	foreign key(course_code1) references Courses(course_code) on update cascade on delete cascade,
	foreign key(course_code2) references Courses(course_code) on update no action on delete no action
)


--30

create table Questions(
	course_code varchar(30),
	question_id int,
	question_text varchar(100),
	ssn int,
	primary key(course_code,ssn,question_id),
	foreign key(course_code) references Courses(course_code) on update cascade on delete cascade,
	foreign key(ssn) references Students(ssn) on update no action on delete no action
)
--31
--I changed it to identity
--drop table Answers
create table Answers(
	answer_id int identity,
	question_id int,
	ssn int,
	course_code varchar(30),
	answerText varchar(100),
	teacher_ssn int,
	primary key(course_code,ssn,question_id,answer_id),
	foreign key(course_code,ssn,question_id) references Questions(course_code,ssn,question_id) on update cascade on delete cascade,
	foreign key(teacher_ssn) references Teachers(ssn) on update no action on delete no action
)
--32
create table MiddleCourses(
	course_code varchar(30),
	school_code int,
	primary key(course_code,school_code),
	foreign key(course_code) references Courses(course_code) on update cascade on delete cascade,
	foreign key(school_code) references Middle_Schools(school_code) on update no action on delete no action
)
--33
create table ElementaryCourses(
	course_code varchar(30),
	school_code int,
	primary key(course_code,school_code),
	foreign key(course_code) references Courses(course_code) on update cascade on delete cascade,
	foreign key(school_code) references Elementary_Schools(school_code) on update no action on delete no action
)
--34
create table HighCourses(
	course_code varchar(30),
	school_code int,
	primary key(course_code,school_code),
	foreign key(course_code) references Courses(course_code) on update cascade on delete cascade,
	foreign key(school_code) references High_Schools(school_code) on update no action on delete no action
)
--35
create table Courses_TakenBy_Students(
	course_code varchar(30),
	ssn int,
	primary key(course_code,ssn),
	foreign key(course_code) references Courses(course_code)  on update cascade on delete cascade,
	foreign key(ssn) references Students(ssn) on update no action on delete no action
)
--36
create table Answers_And_Questions_ReviewedBy_Students(
	course_code2 varchar(30),
	ssn2 int,
	question_id int,
	ssn int,
	course_code3 varchar(30),
	teacher_ssn int,
	answer_id int,
	primary key(course_code2,ssn2,question_id,ssn,teacher_ssn,course_code3),
	foreign key(ssn) references Students(ssn) on update cascade on delete cascade,
	foreign key(course_code2,ssn2,question_id) references Questions(course_code,ssn,question_id) on update no action on delete no action,
	foreign key(course_code3,teacher_ssn,question_id,answer_id) references Answers(course_code,ssn,question_id,answer_id) on update no action on delete no action,

)
--37
create table Assignments(
	course_code2 varchar(30),
	assignment_number int,
	ssn int,
	content varchar(200),
	due_date Date,
	posting_date Date,
	mark float,
	solution varchar(200),
	teacher_that_grades_ssn int,
	teacher_that_posts_ssn int,
	primary key(course_code2,assignment_number, ssn),
	foreign key(course_code2) references Courses(course_code) on update no action on delete no action,
	foreign key(ssn) references Students(ssn) on update no action on delete no action,
	foreign key(teacher_that_grades_ssn) references Teachers(ssn) on update cascade on delete set null,
	foreign key(teacher_that_posts_ssn) references Teachers(ssn) on update no action on delete no action
)
--38 fatya min nadeen
create table Parents_writeReviewsAbout_Schools(
	parent_username varchar(30),
	school_code int,
	review varchar(50),
	primary key(parent_username,school_code),
	foreign key (parent_username) references Parents(username) on update no action on delete no action,
	foreign key (school_code) references Schools(school_code) on update cascade on delete cascade
)

--39 fatya number 2 min nadeen bardo
create table Courses_taughtBy_Teachers
(
	teacher_ssn int,
	course_code varchar(30),
	primary key (teacher_ssn,course_code),
	foreign key (teacher_ssn) references Teachers(ssn) on update cascade on delete cascade,
	foreign key (course_code) references Courses (course_code) on update no action on delete no action

)