
---------------------------------------------------------------------------------------------------

set identity_insert Schools on;
insert into Schools (school_code,name,main_language,vision,mission,fees,school_type,school_address,phone_number,email,general_info) 
values('1','DSB','German','respect for human dignity',
'encourage schoolchildren to contribute their values ​​to their society',46730,'international','8, Mohamed Mahmoud Str.,Bab El Louk', '20-2-27900088',  'dsbbuero@dsbkairo.de',
'for more info: http://dsb-kairo.de/')
set identity_insert Schools off;

set identity_insert Schools on;
insert into Schools(school_code,name,main_language,vision,mission,fees,school_type,school_address,phone_number,email,general_info) 
values (2,'Elite', 'English', 'students with strong ethical beliefs.','quality education.',50000,'international','New Cairo – 5th Settlement', '01111143225','info@eliteeducation-eg.com','website: http://www.eliteeducation-eg.com/')
set identity_insert Schools off;

set identity_insert Schools on;
insert into Schools (school_code,name,main_language,vision,mission,fees,school_type,school_address,phone_number,email,general_info) 
values('3','New Horizon School','English','mutual appreciation, respect',
'encourage school children to grow to their full potential',30000,'international','Zahraa al maadi, Cairo, Egypt', '+202 2733 2058',  'newhorizon01@hotmail.com',
'Please check link for more info: http://www.newhorizon-eg.com/home.html')
set identity_insert Schools off;



insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(1,1)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(2,1)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(3,1)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(4,1)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(5,1)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(6,1)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(7,1)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(8,1)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(9,1)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(10,1)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(11,1)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(12,1)

insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(1,2)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(2,2)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(3,2)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(4,2)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(5,2)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(6,2)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(7,2)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(8,2)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(9,2)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(10,2)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(11,2)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(12,2)

insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(1,3)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(2,3)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(3,3)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(4,3)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(5,3)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(6,3)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(7,3)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(8,3)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(9,3)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(10,3)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(11,3)
insert into Grades_offeredBy_Schools(grade_offered,school_code)
values(12,3)



insert into Middle_Schools(school_code) values(1)
insert into Elementary_Schools(school_code) values(1)
insert into High_Schools(school_code) values(1)

insert into Middle_Schools values(2)
insert into Elementary_Schools values(2)
insert into High_Schools values(2)

insert into Elementary_Schools(school_code) values(3)
insert into Middle_Schools(school_code) values(3)
insert into High_Schools(school_code) values(3)



insert into Employees (ssn,username,employee_password,first_name,middle_name,last_name,gender,birthday,employee_address,salary,email,school_code)
values(1234567890,'walter.ritter','ILoveGermany','Walter','X','Ritter','male','4-7-1950','Cairo',5000,'ritter@dsb.edu.eg',1)
insert into Employees (ssn,username,employee_password,first_name,middle_name,last_name,gender,birthday,employee_address,salary,email,school_code)
values(23456789,'reihnrad.greatz','Schazti1234','Reihnrad','Y','Greatz','male','8-9-1949','Cairo',4600,'graetz@dsb.edu.eg',1)
insert into Employees (ssn,username,employee_password,first_name,middle_name,last_name,gender,birthday,employee_address,salary,email,school_code)
values(34567890,'olga.mihm','Dsab1234','Olga','Z','Mihm','female','7-3-1960','Cairo',4600,'mihm@dsb.edu.eg',1)
insert into Employees (ssn,username,employee_password,first_name,middle_name,last_name,gender,birthday,employee_address,salary,email,school_code)
values(45678903,'katrin.schaefer','EnglishAllTheWay','Katrin','W','Schaefer','female','3-12-1983','Cairo',4600,'schaefer@dsb.edu.eg',1)
insert into Employees (ssn,username,employee_password,first_name,middle_name,last_name,gender,birthday,employee_address,salary,email,school_code)
values(56781234,'herz.gruntaler','IDontKnow','Herz','A','Gruntaler','male','5-5-1952','Cairo',5000,'gruntaler@dsb.edu.eg',1)

insert into Employees (ssn,username,employee_password,first_name,middle_name,last_name,gender,birthday,employee_address,salary,email,school_code)
values(9357327,'moheb.youssef','physicsIsLife','Moheb','A.','Youssef','male','1-1-1960','7 el gondy st., abbas el akad,madinet nasr',10000, 'moheb_youssef@gmail.com',2)
insert into Employees (ssn,username,employee_password,first_name,middle_name,last_name,gender,birthday,employee_address,salary,email,school_code)
values(383545732,'ramy.mahfouz','accountingIsLife','Ramy','H.','Mahfouz','male','4-7-1966','villa 100/2 rehab city beside mall 1',10000, 'ramy_mahfouz@gmail.com',2)
insert into Employees (ssn,username,employee_password,first_name,middle_name,last_name,gender,birthday,employee_address,salary,email,school_code)
values(56347764,'heba.fathy','englishIsLife','Heba','S.','Fathy','female','10-9-1967','14 affifi st., Sheraton',10000, 'heba_fathy@gmail.com',2)
insert into Employees (ssn,username,employee_password,first_name,middle_name,last_name,gender,birthday,employee_address,salary,email,school_code)
values(16461264,'lobna.elmihy','tortureStudents','Lobna','F.','Elmihy','female','12-5-1962','21 el nahar st.,mostafa el nahas,madinet nasr',5000, 'lobna_elmihy@gmail.com',2)
insert into Employees (ssn,username,employee_password,first_name,middle_name,last_name,gender,birthday,employee_address,salary,email,school_code)
values(5484382,'rasha.gamal','smileAlways','Rasha','T.','Gamal','female','3-3-1968','villa 30 el shorouk city',5000, 'rasha_gamal@gmail.com',2)

insert into Employees (ssn,username,employee_password,first_name,middle_name,last_name,gender,birthday,employee_address,salary,email,school_code)
values(67345,'a.moghazy','12344','Abdelrahman','M','Moghazy','male','5-6-1948','Cairo',4600,'moghazy.l@newhorizon.edu.eg',3)
insert into Employees (ssn,username,employee_password,first_name,middle_name,last_name,gender,birthday,employee_address,salary,email,school_code)
values(789456,'waleed.gadallah','98765','Waleed','A','Gadallah','male','8-5-1952','Cairo',4600,'willo@newhorizon.edu.eg',3)
insert into Employees (ssn,username,employee_password,first_name,middle_name,last_name,gender,birthday,employee_address,salary,email,school_code)
values(834567,'marian.salama','ud7f','Marian','K','Salama','female','1-12-1960','Cairo',5000,'miro@newhorizon.edu.eg',3)
insert into Employees (ssn,username,employee_password,first_name,middle_name,last_name,gender,birthday,employee_address,salary,email,school_code)
values(945678,'amani.hamdi','9jidjied','Amani','A','Hamdi','female','7-10-1970','Cairo',4600,'amani.h@newhorizon.edu.eg',3)
insert into Employees (ssn,username,employee_password,first_name,middle_name,last_name,gender,birthday,employee_address,salary,email,school_code)
values(6789,'nevin.labib','098765','Nevin','A','Labib','female','6-3-1962','Cairo',5000,'wlo@newhorizon.edu.eg',3)



insert into Administrators(administrator_ssn) values (1234567890)
insert into Administrators(administrator_ssn) values (56781234)

insert into Administrators(administrator_ssn) values(16461264)
insert into Administrators(administrator_ssn) values(5484382)

insert into Administrators(administrator_ssn) values (6789)
insert into Administrators(administrator_ssn) values (834567)



--JUYSSSSSSSS
--check grades,ages,birthdays
/*
insert into Children (ssn,name, birthday,gender)
values (1,'Sara Nagui','7-14-2006','female')
insert into Schools_accept_Students(school_code,ssn)
values(1,1)
insert into Students (ssn,username,student_password,school_code)
values(1,'sara.nagui','123',1)

insert into Children (ssn,name, birthday,gender)
values (2,'Malaka Ahmad','2-5-2006','female')
insert into Schools_accept_Students(school_code,ssn)
values(1,2)
insert into Students (ssn,username,student_password,school_code)
values(2,'malak.aahmad','124',1)

insert into Children (ssn,name, birthday,gender)
values (3,'Menna Ayman','5-24-2006','female')
insert into Schools_accept_Students(school_code,ssn)
values(1,3)
insert into Students (ssn,username,student_password,school_code)
values(3,'menna.ayman','125',1)

insert into Children (ssn,name, birthday,gender)
values (4,'mahi Mohammed','10-28-2006','female')
insert into Schools_accept_Students(school_code,ssn)
values(1,4)
insert into Students (ssn,username,student_password,school_code)
values(4,'mahi.mohamad','126',1)

insert into Children (ssn,name, birthday,gender)
values (5,'Amina Satour','7-14-2007','female')
insert into Schools_accept_Students(school_code,ssn)
values(1,5)
insert into Students (ssn,username,student_password,school_code)
values(5,'amina.satour','123',1)

insert into Children (ssn,name, birthday,gender)
values (6,'Alia Sobhi','7-14-2007','female')
insert into Schools_accept_Students(school_code,ssn)
values(1,6)
insert into Students (ssn,username,student_password,school_code)
values(6,'alia.sobhi','123',1)

insert into Children (ssn,name, birthday,gender)
values (7,'Menna Assem','7-14-2007','female')
insert into Schools_accept_Students(school_code,ssn)
values(1,7)
insert into Students (ssn,username,student_password,school_code)
values(7,'menna.assem','123',1)

insert into Children (ssn,name, birthday,gender)
values (8,'Mariam ElGezery','7-14-2008','female')
insert into Schools_accept_Students(school_code,ssn)
values(1,8)
insert into Students (ssn,username,student_password,school_code)
values(8,'mariam.gezery','123',1)

insert into Children (ssn,name, birthday,gender)
values (9,'Mariam Karim','7-14-2008','female')
insert into Schools_accept_Students(school_code,ssn)
values(1,9)
insert into Students (ssn,username,student_password,school_code)
values(9,'mariam.karim','123',1)

insert into Children (ssn,name, birthday,gender)
values (10,'Marleen Auvry','7-14-2009','female')
insert into Schools_accept_Students(school_code,ssn)
values(1,10)
insert into Students (ssn,username,student_password,school_code)
values(10,'marleen.auvry','123',1)


insert into Children(ssn,name,birthday, gender)
values(11111,'Mariam Sameh','7-7-1999','female')
insert into Schools_accept_Students(school_code,ssn)
values(2,11111)
insert into Students (ssn,username,student_password,school_code)
values(11111,'mariam.sameh','7796hi',2)

insert into Children(ssn,name,birthday, gender)
values(33333,'Rafik Louis','1-4-2000','male')
insert into Schools_accept_Students(school_code,ssn)
values(2,33333)
insert into Students(ssn,username,student_password,school_code)
values(33333,'rafik.louis','hibye',2)

insert into Children(ssn,name,birthday, gender)
values(44444,'Bassem Sami','10-11-2001','male')
insert into Schools_accept_Students(school_code,ssn)
values(2,44444)
insert into Students(ssn,username,student_password,school_code)
values(44444,'bassem.sami','hsgesdn',2)

insert into Children(ssn,name,birthday, gender)
values(22222,'Youssef Sameh','9-8-2002','male')
insert into Schools_accept_Students(school_code,ssn)
values(2,22222)
insert into Students(ssn,username,student_password,school_code)
values(22222,'youssef.sameh','8902hi',2)

insert into Children(ssn,name,birthday, gender)
values(55555, 'Glory Emad','3-23-2003','female')
insert into Schools_accept_Students(school_code,ssn)
values(2,55555)
insert into Students(ssn,username,student_password,school_code)
values(55555,'glory.emad','tehsgdh',2)

insert into Children(ssn,name,birthday, gender)
values(66666,'Sherry Sherif','5-24-2004','female')
insert into Schools_accept_Students(school_code,ssn)
values(2,66666)
insert into Students(ssn,username,student_password,school_code)
values(66666,'sherry.louis','tdjdfb',2)

insert into Children(ssn,name,birthday, gender)
values(77777,'Mina Milad','4-11-2005','male')
insert into Schools_accept_Students(school_code,ssn)
values(2,77777)
insert into Students(ssn,username,student_password,school_code)
values(77777,'mina.milad','twhjdbh',2)

insert into Children(ssn,name,birthday, gender)
values(88888,'Nada Amir','5-3-2006','female')
insert into Schools_accept_Students(school_code,ssn)
values(2,88888)
insert into Students(ssn,username,student_password,school_code)
values (88888,'nada.amir','hsahdhd',2)

insert into Children(ssn,name,birthday, gender)
values(99999,'Ahmed Sherif','9-11-2007','male')
insert into Schools_accept_Students(school_code,ssn)
values(2,99999)
insert into Students(ssn,username,student_password,school_code)
values(99999,'ahmed.sherif','grefcb',2)

insert into Children(ssn,name,birthday, gender)
values(101010,'Marina Daniel','12-1-2008','female')
insert into Schools_accept_Students(school_code,ssn)
values(2,101010)
insert into Students(ssn,username,student_password,school_code)
values(101010,'marina.daniel','fghbcshjcbd',2)

insert into Children(ssn,name,birthday, gender)
values(303030,'Shady Mohsen','6-4-2009','male')
insert into Schools_accept_Students(school_code,ssn)
values(2,303030)
insert into Students(ssn,username,student_password,school_code)
values(303030,'shady.mohsen','gcbccnsnx',2)

insert into Children(ssn,name,birthday, gender)
values(404040,'Youssef Hanna','6-6-2009','male')
insert into Schools_accept_Students(school_code,ssn)
values(2,404040)
insert into Students(ssn,username,student_password,school_code)
values(404040,'youssef.hanna','cbcduecbd',2)


insert into Children (ssn,name, birthday,gender)
values (33,'Nadeen Ghali','12-22-2000','female')
insert into Children (ssn,name, birthday,gender)
values (34,'Nirvana Esmat','8-1-2001','female')
insert into Children (ssn,name, birthday,gender)
values (35,'Mostafa Moneib','3-8-1999','male')
insert into Children (ssn,name, birthday,gender)
values (36,'Laura Mahmoud','6-15-2003','female')
insert into Children (ssn,name, birthday,gender)
values (37,'Aya Gougou','9-18-2008','female')
insert into Children (ssn,name, birthday,gender)
values (38,'Habiba Ismail','6-26-1999','female')
insert into Children (ssn,name, birthday,gender)
values (39,'Youssef Magued','10-15-2003','male')
insert into Children (ssn,name, birthday,gender)
values (40,'Youssef Elwi','4-17-2000','male')
insert into Children (ssn,name, birthday,gender)
values (41,'Yasmin Helmy','7-7-1999','female')
insert into Children (ssn,name, birthday,gender)
values (42,'Youssef Tarek','2-8-2001','male')

insert into Schools_accept_Students(school_code,ssn)
values(3,33)
insert into Schools_accept_Students(school_code,ssn)
values(2,33)
insert into Schools_accept_Students(school_code,ssn)
values(3,34)
insert into Schools_accept_Students(school_code,ssn)
values(1,34)
insert into Schools_accept_Students(school_code,ssn)
values(3,35)
insert into Schools_accept_Students(school_code,ssn)
values(3,36)
insert into Schools_accept_Students(school_code,ssn)
values(3,37)
insert into Schools_accept_Students(school_code,ssn)
values(3,38)
insert into Schools_accept_Students(school_code,ssn)
values(3,39)
insert into Schools_accept_Students(school_code,ssn)
values(3,40)
insert into Schools_accept_Students(school_code,ssn)
values(3,41)
insert into Schools_accept_Students(school_code,ssn)
values(3,42)

insert into Students (ssn,username,student_password,school_code)
values(33,'nadeen.ghali','bababa',3)
insert into Students (ssn,username,student_password,school_code)
values(34,'nirvana.esmat','bihihi',3)
insert into Students (ssn,username,student_password,school_code)
values(35,'mostafa.moneib','wertyu',3)
insert into Students (ssn,username,student_password,school_code)
values(36,'laura.mahmoud','34567',3)
insert into Students (ssn,username,student_password,school_code)
values(37,'aya.gougou','fluffypenguin',3)
insert into Students (ssn,username,student_password,school_code)
values(38,'habiba.ismail','flubzobubzo',3)
insert into Students (ssn,username,student_password,school_code)
values(39,'youssef.magued','yasta',3)
insert into Students (ssn,username,student_password,school_code)
values(40,'youssef.elwi','gymyeah',3)
insert into Students (ssn,username,student_password,school_code)
values(41,'yasmin.helmy','booksrock',3)
insert into Students (ssn,username,student_password,school_code)
values(42,'youssef.tarek','30secondstomars',3)


*/

--JUYSSSSS
--should we insert teacher_ssn or not?
--first and third batch mafhomsh, second batch feeha

insert into Courses(course_code,course_description,grade,clevel,course_name)
values('DEU7','German Course for seventh grade',7,'middle','Deutsch')
insert into Courses(course_code,course_description,grade,clevel,course_name)
values('DEU10','German Course for tenth grade',10,'high','Deutsch')
insert into Courses(course_code,course_description,grade,clevel,course_name)
values('MTH12','Math Course for 12th grade',12,'high','Math')
insert into Courses(course_code,course_description,grade,clevel,course_name)
values('MTH9','Math Course for 9th grade',9,'middle','Math')
insert into Courses(course_code,course_description,grade,clevel,course_name)
values('ENG8','English Course for 8th grade',8,'middle','English')

insert into Courses(course_code,course_description,grade, clevel,course_name)
values('Phy101','Physics for IG 1',10,'high','Physics OL')
insert into Courses(course_code,course_description,grade, clevel,course_name)
values('Phy201','Physics for IG 2',11,'high','Physics AS')
insert into Courses(course_code,course_description,grade, clevel,course_name)
values('Phy301','Physics for IG 3',12,'high','Physics A2')
insert into Courses(course_code,course_description,grade, clevel,course_name)
values('Acc101','Accounting for IG 2',11,'high','Accounting OL')
insert into Courses(course_code,course_description,grade, clevel,course_name)
values('Acc201','Accounting for IG 3',12,'high','Accounting AS')
insert into Courses(course_code,course_description,grade, clevel,course_name)
values('Acc301','Accounting for IG 3',12,'high','Accounting A2')
insert into Courses(course_code,course_description,grade, clevel,course_name)
values('Lang101','English Language for IG 1',10,'high','English Language OL')
insert into Courses(course_code,course_description,grade, clevel,course_name)
values('Litr101','English Literature for IG 1',10,'high','English Literature OL')
insert into Courses(course_code,course_description,grade, clevel,course_name)
values('Lang201','English Language for IG 2',11,'high','English Language AS')
insert into Courses(course_code,course_description,grade, clevel,course_name)
values('Litr201','English Literature for IG 2',11,'high','English Literature AS')
--
insert into Courses(course_code,course_description,grade,clevel,course_name)
values('AR1','Arabic Course for first grade',1,'elementary','Arabic')
insert into Courses(course_code,course_description,grade,clevel,course_name)
values('AR2','Arabic Course for second grade',2,'elementary','Arabic')
insert into Courses(course_code,course_description,grade,clevel,course_name)
values('AR3','Arabic Course for third grade',3,'elementary','Arabic')
insert into Courses(course_code,course_description,grade,clevel,course_name)
values('AR4','Arabic Course for fourth grade',4,'elementary','Arabic')
insert into Courses(course_code,course_description,grade,clevel,course_name)
values('AR5','Arabic Course for fifth grade',5,'elementary','Arabic')
insert into Courses(course_code,course_description,grade,clevel,course_name)
values('AR6','Arabic Course for sixth grade',6,'elementary','Arabic')
insert into Courses(course_code,course_description,grade,clevel,course_name)
values('AR7','Arabic Course for seventh grade',7,'middle','Arabic')
insert into Courses(course_code,course_description,grade,clevel,course_name)
values('AR8','Arabic Course for eightth grade',8,'middle','Arabic')
insert into Courses(course_code,course_description,grade,clevel,course_name)
values('AR9','Arabic Course for ninth grade',9,'middle','Arabic')
insert into Courses(course_code,course_description,grade,clevel,course_name)
values('AR10','Arabic Course for tenth grade',10,'high','Arabic')



insert into Courses_havePrerequisite_Courses (course_code1,course_code2) values('Phy201','Phy101')
insert into Courses_havePrerequisite_Courses (course_code1,course_code2) values('Phy301','Phy201')
insert into Courses_havePrerequisite_Courses (course_code1,course_code2) values('Acc201','Acc101')
insert into Courses_havePrerequisite_Courses (course_code1,course_code2) values('Acc301','Acc201')
insert into Courses_havePrerequisite_Courses (course_code1,course_code2) values('Lang201','Lang101')
insert into Courses_havePrerequisite_Courses (course_code1,course_code2) values('Litr201','Litr101')

insert into Courses_havePrerequisite_Courses (course_code1,course_code2) values ('AR2','AR1')
insert into Courses_havePrerequisite_Courses (course_code1,course_code2) values ('AR3','AR2')
insert into Courses_havePrerequisite_Courses (course_code1,course_code2) values ('AR4','AR3')


-------------------------------------------------------------------------------------------------
--5)
insert into Supplies
values('4 100 page copybooks',2)
insert into Supplies
values('colored pens',2)
insert into Supplies
values('pencils',2)
insert into Supplies
values('rubber',2)
insert into Supplies
values('stapler',2)
insert into Supplies
values('colored sketch book',2)
insert into Supplies
values('white sketch book',2)
insert into Supplies
values('sharpner',2)

/*
insert into Teachers (ssn,start_date_of_teaching)
values(1234567890,'1-9-1990')

insert into Teachers
values(56347764,'1-9-1995')
insert into Teachers
values(945678,'1-9-2000')
*/
insert into Courses_taughtBy_Teachers(teacher_ssn,course_code)
values(1234567890, 'Phy201')
insert into Assignments (assignment_number, content, due_date,teacher_that_posts_ssn,teacher_that_grades_ssn,teacher_that_posts_ssn,course_code2,)
values(1,'blabla','11-2-2015',1234567890,1234567890, 'Phy201')

insert into clubs
values('Music ensemble',2,'to produce thereputic art')
insert into clubs
values('Inspire',2,'pushing our limits')

/*
insert into Parents(username,parent_password,first_name,last_name,email,parents_address,home_number,review,school_code)
values('heidy.milad','hdbjxxw','Heidy','Milad','heidymilad@gmail.com','7 el shaheed mahmoud afifi st.','0224144107','no review',2)
insert into Parents
values('sameh.kamel','ebhcbecbew','Sameh','Kamel','samehkamel@gmail.com','7 isaac yacoub st.','035830714','no review',2)
*/