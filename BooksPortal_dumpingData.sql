--dumping data into the tables
/*inserting values into the departments*/
INSERT INTO departments(dept_id,dept_name,dept_fullname) VALUES(DEPT_SEQ.NEXTVAL,'BCIT','Computer Science And Information Technology');
INSERT INTO departments(dept_id,dept_name,dept_fullname) VALUES(DEPT_SEQ.NEXTVAL,'CIS','Computer Systems Engineering');
INSERT INTO departments(dept_id,dept_name,dept_fullname) VALUES(DEPT_SEQ.NEXTVAL,'SE','Software Engineering');

/*inserting values into the courses*/
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'CT-153','PL','Programming Languages',1,1);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'CT-157','DAA','Data Structures And Algorithms',1,1);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'CT-259','CG','Computer Graphics',2,1);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'CT-362','WE','Web Engineering',2,1);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'CT-353','OS','Operating Systems',3,1);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'CT-361','AI','Artficial Intelligence',3,1);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'CT-460','NIS','Network And Information Security',4,1);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'CS-451','PP','Parallel Processing',4,1);

INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'CS-109','CP','Computer Programming',1,2);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'CS-111','OOP','Object Oriented Programming',1,2);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'CS-216','DSA','Data Structures And Algorithms',2,2);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'CS-212','COD','Computer Ogranization And Design',2,2);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'MT-335','PS','Probability And Statistics',3,2);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'CS-317','OS','Operating Systems',3,2);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'CS-412','AI','Artificial Intelligence',4,2);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'CS-428','PDC','Parallel And Distributed Computing',4,2);

INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'CT-157','FIT','Fundamentals Of IT',1,3);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'EL-134','BE','Basic Electronics',1,3);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'SE-202','CG','Computer Graphics',2,3);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'CS-252','CAO','Computer Architecture And Ogranization',2,3);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'MT-331','PS','Probability And Statistics',3,3);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'CS-351','CCN','Computer Communication Networks',3,3);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'SE-406','DC','Distributed Computing',4,3);
INSERT INTO courses(course_id,course_code,course_name,course_fullname,course_year,dept_id) VALUES(COURSES_SEQ.NEXTVAL,'SE-408','DP','Design Patterns',4,3);


/*inserting values into the admins*/
INSERT INTO admins(admin_id,f_name,l_name,email,pass) VALUES(ADMIN_SEQ.NEXTVAL,'Saim','Akhtar','saimakhtar@node.com','node1234');
INSERT INTO admins(admin_id,f_name,l_name,email,pass) VALUES(ADMIN_SEQ.NEXTVAL,'Mauvia','Atif','mauvia@node.com','mawa1234');
INSERT INTO admins(admin_id,f_name,l_name,email,pass) VALUES(ADMIN_SEQ.NEXTVAL,'Saadat','Hassan','saadat@node.com','saadat1234');

/*inserting into user category table*/
INSERT INTO user_category(user_cat_id,user_cat) VALUES(USERCAT_SEQ.NEXTVAL,'Faculty');
INSERT INTO user_category(user_cat_id,user_cat) VALUES(USERCAT_SEQ.NEXTVAL,'Student');
INSERT INTO user_category(user_cat_id,user_cat) VALUES(USERCAT_SEQ.NEXTVAL,'OutSider');

/*inserting values into te user accounts*/
INSERT INTO user_account(user_id,f_name,l_name,email,pass,user_cat_id,dept_id) VALUES(USER_SEQ.NEXTVAL,'Shaheer','Imam','babu@node.com','babu1234',2,1);
INSERT INTO user_account(user_id,f_name,l_name,email,pass,user_cat_id,dept_id) VALUES(USER_SEQ.NEXTVAL,'Shameer','Sarwar','shami@node.com','shami1234',2,1);
INSERT INTO user_account(user_id,f_name,l_name,email,pass,user_cat_id,dept_id) VALUES(USER_SEQ.NEXTVAL,'Kazim','Raza','kaz@node.com','kaz1234',2,1);
INSERT INTO user_account(user_id,f_name,l_name,email,pass,user_cat_id,dept_id) VALUES(USER_SEQ.NEXTVAL,'Adnan','Ahmed','adnan@node.com','adnan1234',1,1);
INSERT INTO user_account(user_id,f_name,l_name,email,pass,user_cat_id,dept_id) VALUES(USER_SEQ.NEXTVAL,'Raza','Imam','raza@node.com','raza1234',1,1);
INSERT INTO user_account(user_id,f_name,l_name,email,pass,user_cat_id,dept_id) VALUES(USER_SEQ.NEXTVAL,'Rameez','Ahmed','rameez@node.com','rameez1234',3,NULL);
INSERT INTO user_account(user_id,f_name,l_name,email,pass,user_cat_id,dept_id) VALUES(USER_SEQ.NEXTVAL,'Areeb','Rehman','areeb@node.com','areeb1234',2,2);
INSERT INTO user_account(user_id,f_name,l_name,email,pass,user_cat_id,dept_id) VALUES(USER_SEQ.NEXTVAL,'Shahab','Tehzeeb','shahab@node.com','shahab1234',1,2);
INSERT INTO user_account(user_id,f_name,l_name,email,pass,user_cat_id,dept_id) VALUES(USER_SEQ.NEXTVAL,'Hamza','Farouqui','hamza@node.com','hamza1234',2,3);

/*inserting values into the uploads*/
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,1,'Introduction To Algorithms By Thomas Cormen',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,4,'The C Programming',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,5,'Algorithms In C++',2);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,1,'Automate The Boring Stuff With Python',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,3,'Let Us C',3);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,6,'Let Us C',2);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,7,'Algorithms Design',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,8,'Data Structures In Python',3);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,4,'Python Algorithms',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,9,'Fundamentals Of Computer Graphics',3);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,10,'Computer Graphics: Principles And Practise',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,8,'JS Ninja',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,11,'You Dont Know JS',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,12,'Whiley HTML CSS',3);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,3,'The Linux Programming',3);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,2,'UnderStanding Operating Systems',2);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,10,'Windows 10 In Easy Steps',3);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,1,'Python Machine Learning',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,7,'AI: A Modern Approach',2);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,3,'Robot Ethics',3);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,12,'Machine Learning For beginners',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,11,'Hacking: The Art Of Exploitation',3);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,9,'The Art Of Deception',2);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,3,'Halte And Hackers',3);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,1,'Computer Security',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,2,'Cyber Security',2);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,1,'Introduction To Parallel Processing',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,5,'CUDA Programming',3);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,2,'Object Oriented In C++',2);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,3,'Thinking In Java',3);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,1,'python Object Oriented Programming',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,4,'Elegant Pbjects',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,5,'Advanced Data Structures',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,6,'Itroduction To Computer Architecture',2);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,7,'Computer Organization And Architecture',3);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,1,'Probability And Statistics For Computer Scientists',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,11,'Probability And Statistics For Engineers',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,12,'Distributed Computation: Principles And Paradigms',3);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,2,'Fundamentals Of Information Technology',2);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,3,'Principles Of Electronics',3);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,1,'Data Communications',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,11,'Computer Networks',1);
INSERT INTO uploads(upload_id,account_id,book_name,admin_id) VALUES(UPLOADS_SEQ.NEXTVAL,2,'Design Patterns Explained',2);

/*inserting values into books_courses table*/
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,1,2);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,9,2);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,1,4);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,1,5);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,1,6);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,9,4);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,9,5);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,9,6);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,2,1);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,2,3);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,2,7);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,2,8);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,2,9);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,2,33);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,3,10);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,3,11);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,4,12);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,4,13);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,4,14);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,5,15);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,5,16);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,5,17);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,6,18);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,6,19);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,6,20);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,6,21);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,7,22);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,7,23);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,7,24);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,7,25);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,7,26);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,8,27);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,8,28);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,10,29);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,10,30);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,10,31);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,10,32);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,11,1);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,11,3);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,11,7);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,11,8);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,11,9);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,11,33);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,12,34);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,12,35);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,13,36);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,13,37);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,14,15);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,14,16);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,14,17);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,15,18);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,15,19);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,15,20);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,15,21);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,16,38);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,17,39);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,18,40);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,19,10);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,19,11);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,20,34);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,20,35);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,21,36);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,21,37);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,22,41);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,22,42);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,23,38);
INSERT INTO books_courses(cb_id,course_id,book_id) VALUES(BOOKS_COURSES_SEQ.NEXTVAL,24,43);



select book_id,book_name from books;
select course_id,course_fullname from courses;