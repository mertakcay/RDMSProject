INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(2,'MERT','AKCAY','mert.akcay@example.com','525325262','Instructor',null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(4,'BUSE','ARGUS','buse.argus@example.com','534523523','Instructor',null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(6,'PELIN','DOYUK','pelin.doyuk@example.com','234243244','Instructor',null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(1,'OZDAL','SAGLAM','ozdal.saglam@example.com','546524234','Instructor',null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(3,'CEM','ULUS','cem.ulus@example.com','546546343','Instructor',null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(5,'BEGUM','SAHIN','begum.sahin@example.com','546546456','Instructor',null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(7,'BURAK','AKCAY','burak.akcay@example.com','546546456','Student',null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(8,'MEHMET','YILMAZ','mehmet.yilmaz@example.com','546549456','Student',null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(9,'MUSTAFA','KAYA','mustafa.kaya@example.com','546541556','Student',null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(10,'HATÝCE','DEMÝR','hatice.demir@example.com','546541556','Student',null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(11,'FATMA','YILMAZ','fatma.yilmaz@example.com','546541557',null,null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(12,'ALÝ','DEMÝR','ali.demir@example.com','546541553',null,null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(13,'CEM','AKCAY','cem.akcay@example.com','546541559',null,null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(14,'SÝNEM','SAHÝN','sinem.sahin@example.com','546541969',null,null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(15,'YUSUF','YILMAZ','yusuf.yilmaz@example.com','546541557',null,null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(16,'MEHMET','DEMÝR','mehmet.demir@example.com','546541553',null,null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(17,'CEM','YILDIZ','cem.yildiz@example.com','546541559',null,null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(18,'SÝNEM','ÇELÝK','sinem.celik@example.com','546541969',null,null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(19,'SENA','SAGLAM','sena.saglam@example.com','546524234','Instructor',null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(20,'DENÝZ','ULUS','deniz.ulus@example.com','546546343','Instructor',null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(21,'MERT','SAHIN','mert.sahin@example.com','546546456','Instructor',null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(22,'YAGMUR','KAYA','yagmur.kaya@example.com','546541556','Student',null);
INSERT INTO [USER](user_id,name,surname,e_mail,phone_number,user_type,company_id) VALUES(23,'ÖMER','DEMÝR','omer.demir@example.com','546541556','Student',null);

INSERT INTO ORGANIZATION VALUES(1, 'Company', 'nokia.com', 'Espoo/Finland');
INSERT INTO ORGANIZATION VALUES(2, 'Company', 'samsung.com', 'Suwon/Korea');
INSERT INTO ORGANIZATION VALUES(3, 'Company', 'apple.com', 'USA');
INSERT INTO ORGANIZATION VALUES(4, 'University', 'egeuniversity.com', 'Bornova/Ýzmir');
INSERT INTO ORGANIZATION VALUES(5, 'University', 'ankarauniversity.com', 'Ankara');
INSERT INTO ORGANIZATION VALUES(6, 'University', 'gaziuniversity.com', 'Yenimahalle/Ankara');

INSERT INTO COMPANY(company_id,company_name,manager_id) VALUES(1,'NOKIA',11);
UPDATE [USER] SET company_id = 1 where user_id = 11
UPDATE [USER] SET company_id = 1 where user_id = 16
UPDATE [USER] SET company_id = 1 where user_id = 7

INSERT INTO COMPANY(company_id,company_name,manager_id) VALUES(2,'SAMSUNG',12);
UPDATE [USER] SET company_id = 2 where user_id = 12
UPDATE [USER] SET company_id = 2 where user_id = 15
UPDATE [USER] SET company_id = 2 where user_id = 9

INSERT INTO COMPANY(company_id,company_name,manager_id) VALUES(3,'APPLE',13);
UPDATE [USER] SET company_id = 3 where user_id = 13
UPDATE [USER] SET company_id = 3 where user_id = 14
UPDATE [USER] SET company_id = 3 where user_id = 19

INSERT INTO UNIVERSITY(university_id,university_name,rector_id) VALUES(4,'Ege Üniversitesi', 2);
INSERT INTO UNIVERSITY(university_id,university_name,rector_id) VALUES(5,'Ankara Üniversitesi',4);
INSERT INTO UNIVERSITY(university_id,university_name,rector_id) VALUES(6,'Gazi Üniversitesi',6);


INSERT INTO DEPARTMENT(dept_id,dept_name,dean_id,dept_office,dept_phone,university_id) VALUES(1,'Computer Engineering',1,'CS','546456645',4);
INSERT INTO DEPARTMENT(dept_id,dept_name,dean_id,dept_office,dept_phone,university_id) VALUES(2,'Physics',3,'PHYS','546645645',5);
INSERT INTO DEPARTMENT(dept_id,dept_name,dean_id,dept_office,dept_phone,university_id) VALUES(3,'Math',5,'MATH','546123645',6);

INSERT INTO INSTRUCTOR(instructor_number,dept_id,major,rank) VALUES(1,1,'AI','Asst. Prof');
INSERT INTO INSTRUCTOR(instructor_number,dept_id,major,rank) VALUES(3,2,'Astrophysics','Assc. Prof');
INSERT INTO INSTRUCTOR(instructor_number,dept_id,major,rank) VALUES(5,3,'Numerical analysis','Prof');
INSERT INTO INSTRUCTOR(instructor_number,dept_id,major,rank) VALUES(2,null,'Economics','Prof');
INSERT INTO INSTRUCTOR(instructor_number,dept_id,major,rank) VALUES(4,null,'Software Engineering','Prof');
INSERT INTO INSTRUCTOR(instructor_number,dept_id,major,rank) VALUES(6,null,'Industry Engineering','Prof');
INSERT INTO INSTRUCTOR(instructor_number,dept_id,major,rank) VALUES(19,1,'Data Structures','Asst. Prof');
INSERT INTO INSTRUCTOR(instructor_number,dept_id,major,rank) VALUES(20,2,'Astronomy','Assc. Prof');
INSERT INTO INSTRUCTOR(instructor_number,dept_id,major,rank) VALUES(21,3,'Linear Algebra','Prof');

INSERT INTO STUDENT(student_number,dept_id,gpa) VALUES(7,1,3.4);
INSERT INTO STUDENT(student_number,dept_id,gpa) VALUES(8,2,2.4);
INSERT INTO STUDENT(student_number,dept_id,gpa) VALUES(9,3,2.9);
INSERT INTO STUDENT(student_number,dept_id,gpa) VALUES(10,3,2.6);
INSERT INTO STUDENT(student_number,dept_id,gpa) VALUES(22,2,3.1);
INSERT INTO STUDENT(student_number,dept_id,gpa) VALUES(23,1,3.3);

INSERT INTO COURSE(course_code,course_name,credit,dept_id) VALUES(1,'Data Structures',3,1);
INSERT INTO COURSE(course_code,course_name,credit,dept_id) VALUES(3,'Artificial Intelligence',5,1);
INSERT INTO COURSE(course_code,course_name,credit,dept_id) VALUES(5,'Molecular physics',4,2);
INSERT INTO COURSE(course_code,course_name,credit,dept_id) VALUES(6,'Nuclear physics',5,2);
INSERT INTO COURSE(course_code,course_name,credit,dept_id) VALUES(7,'Probability and Statistics',3,3);
INSERT INTO COURSE(course_code,course_name,credit,dept_id) VALUES(9,'Differential equations',5,3);


INSERT INTO SECTION(sec_id,course_code,instructor_number,classroom,sec_days,semester,year) VALUES (1,1,19,'A101','Monday','Spring',2022);
INSERT INTO SECTION(sec_id,course_code,instructor_number,classroom,sec_days,semester,year) VALUES (2,1,19,'A101','Monday','Spring',2021);
INSERT INTO SECTION(sec_id,course_code,instructor_number,classroom,sec_days,semester,year) VALUES (3,3,1,'A105','Wednesday','Fall',2021);
INSERT INTO SECTION(sec_id,course_code,instructor_number,classroom,sec_days,semester,year) VALUES (4,5,3,'A109','Tuesday','Fall',2021);
INSERT INTO SECTION(sec_id,course_code,instructor_number,classroom,sec_days,semester,year) VALUES (5,6,20,'A111','Friday','Spring',2022);
INSERT INTO SECTION(sec_id,course_code,instructor_number,classroom,sec_days,semester,year) VALUES (6,6,20,'A111','Friday','Spring',2021);
INSERT INTO SECTION(sec_id,course_code,instructor_number,classroom,sec_days,semester,year) VALUES (7,7,21,'A107','Thursday','Spring',2022);
INSERT INTO SECTION(sec_id,course_code,instructor_number,classroom,sec_days,semester,year) VALUES (8,9,5,'A119','Tuesday','Fall',2021);
INSERT INTO SECTION(sec_id,course_code,instructor_number,classroom,sec_days,semester,year) VALUES (9,9,5,'A119','Tuesday','Fall',2022);

INSERT INTO PROJECT(course_code,project_code,sec_id,project_name,project_description,instructor_number,estimated_end_date,start_date) VALUES(1,1,1,'Data Structures Final Project','Project for data structures course.',19,'01-03-2022','10-04-2022');
INSERT INTO PROJECT(course_code,project_code,sec_id,project_name,project_description,instructor_number,estimated_end_date,start_date) VALUES(3,2,3,'Chess AI','AI project.',1,'01-01-2022','01-29-2022');
INSERT INTO PROJECT(course_code,project_code,sec_id,project_name,project_description,instructor_number,estimated_end_date,start_date) VALUES(5,3,4,'Molecular Physics','Molecular physics research project',3,'02-02-2022','02-17-2022');


INSERT INTO QUIZ(instructor_number,course_code,sec_id,quiz_id,question_path) VALUES (19,1,1,1,'questions/example');

INSERT INTO JOB(job_id,company_id,job_name,seniority_level,job_description,industry) VALUES (1,1,'SOFTWARE DEVELOPER','JR','Software development job for jr engineers.','Telecommunications');
INSERT INTO JOB(job_id,company_id,job_name,seniority_level,job_description,industry) VALUES (2,2,'MACHINE LEARNING ENGINEER','MID','Engineering job for our ML systems.','Consumer Electronics');
INSERT INTO JOB(job_id,company_id,job_name,seniority_level,job_description,industry) VALUES (3,3,'BUSINESS ANALYST','SENIOR','Senior analyst.','Consumer Electronics');

INSERT INTO SKILL(skill_id,category,skill_name) VALUES(1,'Industry Knowledge','Deep Learning');
INSERT INTO SKILL(skill_id,category,skill_name) VALUES(2,'Industry Knowledge','AI');
INSERT INTO SKILL(skill_id,category,skill_name) VALUES(3,'Tools','.NET');
INSERT INTO SKILL(skill_id,category,skill_name) VALUES(4,'Tools','Java');
INSERT INTO SKILL(skill_id,category,skill_name) VALUES(5,'Interpersonal Skills','Teamwork');
INSERT INTO SKILL(skill_id,category,skill_name) VALUES(6,'Language','English');
INSERT INTO SKILL(skill_id,category,skill_name) VALUES(7,'Tools','SQL');
INSERT INTO SKILL(skill_id,category,skill_name) VALUES(8,'Industry Knowledge','Agile Methodologies');

INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(1,1,'Dean','Dean at EGE Uni. Computer Engineering Dept', 'Doctorate');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(2,2,'Rector','Rector at EGE Uni.', 'Doctorate');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(3,3,'Dean','Dean at ANKARA Uni. Physics Dept', 'Doctorate');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(4,4,'Rector','Rector at ANKARA Uni', 'Doctorate');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(5,5,'Dean','Dean at GAZÝ Uni. Math Dept.', 'Doctorate');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(6,6,'Rector','Rector at GAZÝ Uni', 'Doctorate');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(7,7,'Developer','Studying CS, developer  at NOKIA','Bachelors degree');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(8,8,'Student','Studying Physics','Bachelors degree');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(9,9,'Student','Studying Math','Bachelors degree');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(10,10,'Student','Studying Maths','Masters degree');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(11,11,'Manager','Manager at NOKIA','Masters degree');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(12,12,'Manager','Manager at SAMSUNG','Masters degree');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(13,13,'Manager','Manager at APPLE','Masters degree');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(14,14,'Analyst','Analyst at APPLE','Masters degree');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(15,15,'Engineer','Engineer at SAMSUNG','Bachelors degree');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(16,16,'Developer','Developer at NOKIA','Bachelors degree');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(17,17,'Unemployed','Looking for a job...','Bachelors degree');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(18,18,'Unemployed','Looking for a job','Bachelors degree');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(19,19,'Asst. Prof','Asst. Prof at Ege Uni.','Doctorate');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(20,20,'Assc. Prof','Assc. Prof at Ankara Uni.','Doctorate');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(21,21,'Prof','Prof at Gazi Uni.','Doctorate');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(22,22,'Student','Studying Physics','Bachelors Degree');
INSERT INTO CV(cv_id,user_id,position,about,education) VALUES(23,23,'Student','Studing CENG','Bachelors Degree');

INSERT INTO POST(post_id,post_title,post_content) VALUES(1,'POST1','POST1');
INSERT INTO POST(post_id,post_title,post_content) VALUES(2,'POST2','POST2');
INSERT INTO POST(post_id,post_title,post_content) VALUES(3,'POST3','POST3');
INSERT INTO POST(post_id,post_title,post_content) VALUES(4,'POST4','POST4');
INSERT INTO POST(post_id,post_title,post_content) VALUES(5,'POST5','POST5');

INSERT INTO USER_CREATES_POST(user_id, post_id) VALUES(10,1);
INSERT INTO USER_CREATES_POST(user_id, post_id) VALUES(17,2);
INSERT INTO USER_CREATES_POST(user_id, post_id) VALUES(22,3);

INSERT INTO ORGANIZATION_CREATES_POST(organization_id, post_id) VALUES(1,4);
INSERT INTO ORGANIZATION_CREATES_POST(organization_id, post_id) VALUES(6,5);

INSERT INTO COMMENTS_ON_POST(user_id, post_id) VALUES(5,1);

INSERT INTO SHARES_POST(user_id, post_id) VALUES(3,2);

INSERT INTO LIKES_POST(user_id, post_id) VALUES(11,5);

INSERT INTO FOLLOWS_ORGANIZATION(user_id, organization_id) VALUES (18,3)

INSERT INTO KNOWS_SKILLS(user_id, skill_id) VALUES(17, 7);
INSERT INTO KNOWS_SKILLS(user_id, skill_id) VALUES(17, 8);
INSERT INTO KNOWS_SKILLS(user_id, skill_id) VALUES(18, 1);
INSERT INTO KNOWS_SKILLS(user_id, skill_id) VALUES(18, 5);
INSERT INTO KNOWS_SKILLS(user_id, skill_id) VALUES(8, 5);
INSERT INTO KNOWS_SKILLS(user_id, skill_id) VALUES(8, 4);
INSERT INTO KNOWS_SKILLS(user_id, skill_id) VALUES(8, 1);
INSERT INTO KNOWS_SKILLS(user_id, skill_id) VALUES(19, 8);
INSERT INTO KNOWS_SKILLS(user_id, skill_id) VALUES(23, 8);
INSERT INTO KNOWS_SKILLS(user_id, skill_id) VALUES(23, 7);
INSERT INTO KNOWS_SKILLS(user_id, skill_id) VALUES(19, 1);
INSERT INTO KNOWS_SKILLS(user_id, skill_id) VALUES(19, 7);
INSERT INTO KNOWS_SKILLS(user_id, skill_id) VALUES(22, 2);
INSERT INTO KNOWS_SKILLS(user_id, skill_id) VALUES(22, 1);

INSERT INTO APPLIES_JOB(user_id, job_id) VALUES(17, 3);
INSERT INTO APPLIES_JOB(user_id, job_id) VALUES(18, 2);
INSERT INTO APPLIES_JOB(user_id, job_id) VALUES(8, 1);
INSERT INTO APPLIES_JOB(user_id, job_id) VALUES(22, 2);
INSERT INTO APPLIES_JOB(user_id, job_id) VALUES(23, 3);
INSERT INTO APPLIES_JOB(user_id, job_id) VALUES(19, 1);

INSERT INTO REQUIRES_SKILLS(job_id, skill_id) VALUES(3, 7);
INSERT INTO REQUIRES_SKILLS(job_id, skill_id) VALUES(3, 8);
INSERT INTO REQUIRES_SKILLS(job_id, skill_id) VALUES(2, 1);
INSERT INTO REQUIRES_SKILLS(job_id, skill_id) VALUES(2, 2);
INSERT INTO REQUIRES_SKILLS(job_id, skill_id) VALUES(1, 3);
INSERT INTO REQUIRES_SKILLS(job_id, skill_id) VALUES(1, 4);
INSERT INTO REQUIRES_SKILLS(job_id, skill_id) VALUES(1, 5);

INSERT INTO TAKES_SECTION(student_number, course_code, instructor_number, sec_id, grade) VALUES(7, 1, 19, 1, 100);
INSERT INTO TAKES_SECTION(student_number, course_code, instructor_number, sec_id, grade) VALUES(8, 5, 3, 4, 77);
INSERT INTO TAKES_SECTION(student_number, course_code, instructor_number, sec_id, grade) VALUES(9, 7, 21, 7, 66);
INSERT INTO TAKES_SECTION(student_number, course_code, instructor_number, sec_id, grade) VALUES(10, 9, 5, 9, 46);
INSERT INTO TAKES_SECTION(student_number, course_code, instructor_number, sec_id, grade) VALUES(22, 5, 3, 4, 59);
INSERT INTO TAKES_SECTION(student_number, course_code, instructor_number, sec_id, grade) VALUES(23, 1, 19, 1, 85);
INSERT INTO TAKES_SECTION(student_number, course_code, instructor_number, sec_id, grade) VALUES(7, 3, 1, 3, 93);
INSERT INTO TAKES_SECTION(student_number, course_code, instructor_number, sec_id, grade) VALUES(8, 6 ,20 ,5, 56);
INSERT INTO TAKES_SECTION(student_number, course_code, instructor_number, sec_id, grade) VALUES(9, 9, 5, 8, 83);
INSERT INTO TAKES_SECTION(student_number, course_code, instructor_number, sec_id, grade) VALUES(22, 6, 20, 6, 67);

INSERT INTO MESSAGE(user_id, receiver_user_id, message_text) VALUES(5, 1, 'Hello!');
INSERT INTO MESSAGE(user_id, receiver_user_id, message_text) VALUES(4, 9, 'HI');
INSERT INTO MESSAGE(user_id, receiver_user_id, message_text) VALUES(13, 21, 'Thanks!');

INSERT INTO REFERS_TO(user_id, reference_id) VALUES(22, 5);
INSERT INTO REFERS_TO(user_id, reference_id) VALUES(12, 13);
INSERT INTO REFERS_TO(user_id, reference_id) VALUES(6, 8);
INSERT INTO REFERS_TO(user_id, reference_id) VALUES(5, 22);
INSERT INTO REFERS_TO(user_id, reference_id) VALUES(13, 12);
INSERT INTO REFERS_TO(user_id, reference_id) VALUES(9, 20);
INSERT INTO REFERS_TO(user_id, reference_id) VALUES(1, 4);
INSERT INTO REFERS_TO(user_id, reference_id) VALUES(2, 18);

INSERT INTO CONNECTS(user_id, connected_user_id) VALUES(1, 5);
INSERT INTO CONNECTS(user_id, connected_user_id) VALUES(4, 9);
INSERT INTO CONNECTS(user_id, connected_user_id) VALUES(21, 6);
INSERT INTO CONNECTS(user_id, connected_user_id) VALUES(20, 6);
INSERT INTO CONNECTS(user_id, connected_user_id) VALUES(9, 8);
INSERT INTO CONNECTS(user_id, connected_user_id) VALUES(1, 2);
INSERT INTO CONNECTS(user_id, connected_user_id) VALUES(3, 4);
INSERT INTO CONNECTS(user_id, connected_user_id) VALUES(5, 6);
INSERT INTO CONNECTS(user_id, connected_user_id) VALUES(19, 16);
INSERT INTO CONNECTS(user_id, connected_user_id) VALUES(17, 20);
INSERT INTO CONNECTS(user_id, connected_user_id) VALUES(22, 23);

INSERT INTO TAKES_QUIZ(student_number, instructor_number, course_code, sec_id, quiz_id, answer_path, quiz_grade)
VALUES(23, 19, 1, 1, 1, 'answers23/example', 80);
INSERT INTO TAKES_QUIZ(student_number, instructor_number, course_code, sec_id, quiz_id, answer_path, quiz_grade)
VALUES(7, 19, 1, 1, 1, 'answers7/example', 85);

INSERT INTO WORKS_ON_PROJECT(student_number, project_code, instructor_number, course_code, sec_id) VALUES(23,1,19,1,1);
INSERT INTO WORKS_ON_PROJECT(student_number, project_code, instructor_number, course_code, sec_id) VALUES(23,2,1,3,3);
INSERT INTO WORKS_ON_PROJECT(student_number, project_code, instructor_number, course_code, sec_id) VALUES(7,2,1,3,3);
INSERT INTO WORKS_ON_PROJECT(student_number, project_code, instructor_number, course_code, sec_id) VALUES(22,3,3,5,4);

INSERT INTO PROJECTS_CV(cv_id, project_id, project_name, project_desc) VALUES(7, 1, 'Web Development', 'Web project with .NET');
INSERT INTO PROJECTS_CV(cv_id, project_id, project_name, project_desc) VALUES(15, 2, 'Mobile App.', 'Mobile application development');
INSERT INTO PROJECTS_CV(cv_id, project_id, project_name, project_desc) VALUES(12, 3, 'Research Project', 'Research project for thesis');
INSERT INTO PROJECTS_CV(cv_id, project_id, project_name, project_desc) VALUES(23, 4, 'Library Applicaton', 'Library app. for school homework');
INSERT INTO PROJECTS_CV(cv_id, project_id, project_name, project_desc) VALUES(17, 5, 'DL Classification', 'Classification project using deep learning.');

