CREATE TABLE ORGANIZATION
(
organization_id INT,
organization_type VARCHAR(50),
website VARCHAR(50),
[address] VARCHAR(50) NOT NULL,
PRIMARY KEY(organization_id)
);

CREATE TABLE [USER] ( 
user_id INT,
name VARCHAR(50) NOT NULL,
surname VARCHAR(50) NOT NULL,
e_mail VARCHAR(50) NOT NULL UNIQUE,
phone_number VARCHAR(50),
user_type VARCHAR(50),
company_id INT,
PRIMARY KEY(user_id)
);

CREATE TABLE UNIVERSITY
(
university_id INT,
university_name VARCHAR(50) NOT NULL,
rector_id INT,
PRIMARY KEY(university_id),
FOREIGN KEY(university_id) REFERENCES ORGANIZATION(organization_id),
FOREIGN KEY(rector_id) REFERENCES [USER](user_id)
);

CREATE TABLE DEPARTMENT
(
dept_id INT,
dean_id INT,
university_id INT,
dept_name VARCHAR(50) NOT NULL,
dept_office VARCHAR(50) NOT NULL,
dept_phone VARCHAR(50) NOT NULL,
PRIMARY KEY(dept_id),
FOREIGN KEY(dean_id) REFERENCES [USER](user_id),
FOREIGN KEY(university_id) REFERENCES UNIVERSITY(university_id)
);


CREATE TABLE INSTRUCTOR 
(
instructor_number INT,
dept_id INT,
rank VARCHAR(50) NOT NULL,
major VARCHAR(50) NOT NULL,
PRIMARY KEY(instructor_number),
FOREIGN KEY (instructor_number) REFERENCES [USER](user_id),
FOREIGN KEY(dept_id) REFERENCES DEPARTMENT(dept_id)
);

CREATE TABLE STUDENT
(
student_number INT,
dept_id INT,
gpa FLOAT NOT NULL,
PRIMARY KEY(student_number),
FOREIGN KEY (student_number) REFERENCES [USER](user_id),
FOREIGN KEY(dept_id) REFERENCES DEPARTMENT(dept_id)
);

CREATE TABLE CV
(
cv_id INT,
user_id INT,
position VARCHAR(50),
about VARCHAR(200),
education VARCHAR(200),
PRIMARY KEY(cv_id),
FOREIGN KEY(user_id) REFERENCES [USER](user_id)
);

CREATE TABLE POST
(
post_id INT,
post_title VARCHAR(50) NOT NULL,
post_content VARCHAR(200) NOT NULL,
PRIMARY KEY(post_id)
);

CREATE TABLE SKILL
(
skill_id INT,
skill_name VARCHAR(50) NOT NULL,
category VARCHAR(50),
PRIMARY KEY(skill_id)
);

CREATE TABLE COMPANY
(
company_id INT,
company_name VARCHAR(50) NOT NULL,
manager_id INT,
PRIMARY KEY(company_id),
FOREIGN KEY(company_id) REFERENCES ORGANIZATION(organization_id),
FOREIGN KEY(manager_id) REFERENCES [USER](user_id)
);

ALTER TABLE [USER]
ADD FOREIGN KEY(company_id)
REFERENCES COMPANY(company_id)


CREATE TABLE JOB
(
job_id INT,
company_id INT,
job_name VARCHAR(50) NOT NULL,
seniority_level VARCHAR(50),
industry VARCHAR(50),
job_description VARCHAR(200) NOT NULL
PRIMARY KEY(job_id)
FOREIGN KEY(company_id) REFERENCES COMPANY(company_id)
);

CREATE TABLE COURSE
(
course_code INT,
course_name VARCHAR(50) NOT NULL,
dept_id INT,
credit INT NOT NULL,
PRIMARY KEY(course_code),
FOREIGN KEY(dept_id) REFERENCES DEPARTMENT(dept_id)
);

CREATE TABLE SECTION
(
course_code INT,
instructor_number INT,
sec_id INT,
year INT,
semester VARCHAR(50) NOT NULL,
sec_days VARCHAR(50) NOT NULL,
classroom VARCHAR(50),
PRIMARY KEY(course_code, instructor_number, sec_id),
FOREIGN KEY(instructor_number) REFERENCES INSTRUCTOR(instructor_number),
FOREIGN KEY(course_code) REFERENCES COURSE(course_code),
);

CREATE TABLE PROJECT
(
instructor_number INT,
course_code INT,
sec_id INT,
project_code INT,
project_name VARCHAR(50),
start_date DATE,
estimated_end_date DATE,
project_description VARCHAR(200),
PRIMARY KEY(project_code, course_code, instructor_number, sec_id),
FOREIGN KEY(course_code, instructor_number, sec_id) REFERENCES SECTION(course_code, instructor_number, sec_id)
);

CREATE TABLE QUIZ
(
instructor_number INT,
course_code INT,
sec_id INT,
quiz_id INT,
question_path VARCHAR(50),
PRIMARY KEY(quiz_id, course_code, instructor_number, sec_id),
FOREIGN KEY(course_code, instructor_number, sec_id) REFERENCES SECTION(course_code, instructor_number, sec_id)
);

CREATE TABLE COMMENTS_ON_POST
(
user_id INT,
post_id INT,
comment VARCHAR(200),
PRIMARY KEY(user_id, post_id),
FOREIGN KEY(user_id) REFERENCES [USER](user_id),
FOREIGN KEY(post_id) REFERENCES POST(post_id)
);

CREATE TABLE SHARES_POST
(
user_id INT,
post_id INT,
PRIMARY KEY(user_id, post_id),
FOREIGN KEY(user_id) REFERENCES [USER](user_id),
FOREIGN KEY(post_id) REFERENCES POST(post_id)
);

CREATE TABLE LIKES_POST
(
user_id INT,
post_id INT,
PRIMARY KEY(user_id, post_id),
FOREIGN KEY(user_id) REFERENCES [USER](user_id),
FOREIGN KEY(post_id) REFERENCES POST(post_id)
);

CREATE TABLE USER_CREATES_POST
(
user_id INT,
post_id INT,
PRIMARY KEY(user_id, post_id),
FOREIGN KEY(user_id) REFERENCES [USER](user_id),
FOREIGN KEY(post_id) REFERENCES POST(post_id)
);

CREATE TABLE ORGANIZATION_CREATES_POST
(
organization_id INT,
post_id INT,
PRIMARY KEY(organization_id, post_id),
FOREIGN KEY(organization_id) REFERENCES ORGANIZATION(organization_id),
FOREIGN KEY(post_id) REFERENCES POST(post_id)
);


CREATE TABLE FOLLOWS_ORGANIZATION
(
user_id INT,
organization_id INT,
PRIMARY KEY(user_id, organization_id),
FOREIGN KEY(user_id) REFERENCES [USER](user_id),
FOREIGN KEY(organization_id) REFERENCES ORGANIZATION(organization_id)
);

CREATE TABLE KNOWS_SKILLS
(
user_id INT,
skill_id INT,
PRIMARY KEY(user_id, skill_id),
FOREIGN KEY(user_id) REFERENCES [USER](user_id),
FOREIGN KEY(skill_id) REFERENCES SKILL(skill_id)
);

CREATE TABLE APPLIES_JOB
(
user_id INT,
job_id INT,
PRIMARY KEY(user_id, job_id),
FOREIGN KEY(user_id) REFERENCES [USER](user_id),
FOREIGN KEY(job_id) REFERENCES JOB(job_id)
); 

CREATE TABLE REQUIRES_SKILLS
(
job_id INT,
skill_id INT,
PRIMARY KEY(job_id, skill_id),
FOREIGN KEY(job_id) REFERENCES JOB(job_id),
FOREIGN KEY(skill_id) REFERENCES SKILL(skill_id)
);

CREATE TABLE TAKES_SECTION
(
student_number INT,
course_code INT,
instructor_number INT,
sec_id INT,
grade FLOAT,
PRIMARY KEY(student_number, course_code, instructor_number, sec_id),
FOREIGN KEY(student_number) REFERENCES STUDENT(student_number),
FOREIGN KEY(course_code, instructor_number, sec_id) REFERENCES SECTION(course_code, instructor_number, sec_id)
); 

CREATE TABLE MESSAGE
(
user_id INT,
receiver_user_id INT,
message_text VARCHAR(200),
PRIMARY KEY(user_id, receiver_user_id),
FOREIGN KEY(user_id) REFERENCES [USER](user_id),
FOREIGN KEY(receiver_user_id) REFERENCES [USER](user_id)
);

CREATE TABLE REFERS_TO
(
user_id INT,
reference_id INT,
PRIMARY KEY(user_id, reference_id),
FOREIGN KEY(user_id) REFERENCES [USER](user_id),
FOREIGN KEY(reference_id) REFERENCES [USER](user_id)
);

CREATE TABLE CONNECTS
(
user_id INT,
connected_user_id INT,
PRIMARY KEY(user_id, connected_user_id),
FOREIGN KEY(user_id) REFERENCES [USER](user_id),
FOREIGN KEY(connected_user_id) REFERENCES [USER](user_id)
);

CREATE TABLE TAKES_QUIZ
(
student_number INT,
instructor_number INT,
course_code INT,
sec_id INT,
quiz_id INT,
quiz_grade FLOAT,
answer_path VARCHAR(50),
PRIMARY KEY(student_number, instructor_number, course_code, sec_id, quiz_id),
FOREIGN KEY(student_number) REFERENCES STUDENT(student_number),
FOREIGN KEY(quiz_id, course_code, instructor_number, sec_id) REFERENCES 
	QUIZ(quiz_id, course_code, instructor_number, sec_id)
);

CREATE TABLE WORKS_ON_PROJECT
(
student_number INT,
instructor_number INT,
course_code INT,
sec_id INT,
project_code INT,
PRIMARY KEY(student_number, project_code, instructor_number, course_code, sec_id),
FOREIGN KEY(student_number) REFERENCES STUDENT(student_number),
FOREIGN KEY(project_code, course_code, instructor_number, sec_id) REFERENCES 
	PROJECT(project_code, course_code, instructor_number, sec_id)
);

CREATE TABLE PROJECTS_CV
(
cv_id INT,
project_id INT,
project_name VARCHAR(100),
project_desc VARCHAR(200),
PRIMARY KEY(cv_id, project_id),
FOREIGN KEY(cv_id) REFERENCES CV(cv_id)
);