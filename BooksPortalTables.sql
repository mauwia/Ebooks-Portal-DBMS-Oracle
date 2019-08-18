--CREATING TABLES

CREATE TABLE Departments(
    dept_id NUMBER(30,0) NOT NULL,
    dept_name VARCHAR2(100) NOT NULL,
    dept_fullname VARCHAR2(200) NOT NULL,
    CONSTRAINT dept_pk PRIMARY KEY(dept_id)
    );

CREATE TABLE Courses (
    course_id NUMBER(30,0) NOT NULL,
    course_code VARCHAR2(100) NOT NULL,
    course_name VARCHAR2(100) NOT NULL,
    course_fullname VARCHAR2(200) NOT NULL,
    dept_id NUMBER(30,0) NOT NULL,
    course_year NUMBER(20,0) NOT NULL,
    CONSTRAINT course_pk PRIMARY KEY(course_id),
    CONSTRAINT course_dept_fk FOREIGN KEY(dept_id)
    REFERENCES Departments(dept_id) ON DELETE CASCADE
    );

CREATE TABLE Books(
    book_id NUMBER(30,0) NOT NULL,
    book_name VARCHAR2(200) NOT NULL,
    upload_id NUMBER(20,0),
    CONSTRAINT book_pk PRIMARY KEY(book_id),
    CONSTRAINT fk_upload_id FOREIGN KEY(upload_id)
    REFERENCES uploads(upload_id) ON DELETE SET NULL
    );

CREATE TABLE Books_courses(
    cb_id NUMBER(30,0) NOT NULL,
    course_id NUMBER(30,0) ,
    book_id NUMBER(30,0) ,
    CONSTRAINT pk_cb_id PRIMARY KEY(cb_id),
    CONSTRAINT fk_course_id FOREIGN KEY(course_id)
    REFERENCES courses(course_id) ON DELETE SET NULL,
    CONSTRAINT fk_book_id FOREIGN KEY(book_id)
    REFERENCES books(book_id) ON DELETE SET NULL
    );
    
CREATE TABLE Admins(
    admin_id NUMBER(30,0) NOT NULL,
    f_name VARCHAR2(100) NOT NULL,
    l_name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) NOT NULL,
    pass VARCHAR2(200) NOT NULL,
    CONSTRAINT pk_admin_id PRIMARY KEY(admin_id),
    CONSTRAINT uq_email UNIQUE(email)
    );
    
CREATE TABLE user_Category(
    user_cat_id NUMBER(20,0) NOT NULL,
    user_cat VARCHAR2(200) NOT NULL,
    CONSTRAINT pk_usercat PRIMARY KEY(user_cat_id)
    );
CREATE TABLE User_account(
    user_id NUMBER(30,0) NOT NULL,
    f_name VARCHAR2(200) NOT NULL,
    l_name VARCHAR2(200) NOT NULL,
    email VARCHAR2(100) NOT NULL,
    pass VARCHAR2(200) NOT NULL,
    user_cat_id NUMBER(30,0),
    dept_id NUMBER(30,0),
    CONSTRAINT pk_user_id PRIMARY KEY(user_id),
    CONSTRAINT uq_email_user UNIQUE(email),
    CONSTRAINT fk_usercat FOREIGN KEY(user_cat_id)
    REFERENCES user_Category(user_cat_id) ON DELETE SET NULL,
    CONSTRAINT fk_user_dept_id FOREIGN KEY(dept_id)
    REFERENCES Departments(dept_id) ON DELETE SET NULL
    );
CREATE TABLE accounts(
    account_id NUMBER(20,0) NOT NULL,
    account_email VARCHAR2(100) NOT NULL,
    is_admin CHAR(1) CHECK (is_admin in ('Y','N')),
    CONSTRAINT pk_account_id PRIMARY KEY(account_id)
    );
CREATE TABLE uploads(
    upload_id NUMBER(30,0) NOT NULL,
    account_id NUMBER(20,0) NOT NULL,
    uploader_email VARCHAR2(200) NOT NULL,
    book_name VARCHAR2(300) NOT NULL,
    admin_id NUMBER(30,0) NOT NULL,
    admin_email VARCHAR2(200) NOT NULL,
    upload_date Date DEFAULT sysdate,
    CONSTRAINT pk_upload_id PRIMARY KEY(upload_id),
    CONSTRAINT fk_account_id FOREIGN KEY(account_id)
    REFERENCES accounts(account_id) ON DELETE SET NULL,
    CONSTRAINT fk_admin_id FOREIGN KEY(admin_id)
    REFERENCES Admins(admin_id) ON DELETE SET NULL
    );