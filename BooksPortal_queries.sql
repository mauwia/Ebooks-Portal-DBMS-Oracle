--queries
/*Gets the courses of all the departments*/
select d.dept_name,d.dept_fullname,c.course_code,c.course_name,c.course_fullname    
    from departments d left join courses c 
    on d.dept_id=c.dept_id;
    
/*Gets the count of all the books approved by the admins*/
select count(*) as Approved_Books,admin_email from uploads group by admin_email order by Approved_Books;

/*Gets the count and email of the admin who have approved most number of books*/
select  count(*),admin_id,admin_email from uploads group by (admin_email,admin_id) 
    having count(*) in (select max(count(*)) from uploads group by admin_id) ;


/*Gets the admins who upoaded the books using EQUIJOIN*/
select upload_id,book_name,admin_id,admin_email
    from uploads
    where uploader_email = admin_email order by admin_id;

/*Get all the books of the courses*/
select c.course_code,c.course_fullname,b.book_name from courses c 
    left join books_courses cb on cb.course_id=c.course_id
    right join books b on b.book_id=cb.book_id order by cb.cb_id;

/*Get all the books of a certain course*/
select c.course_code,c.course_fullname,b.book_name from courses c 
    left join books_courses cb on cb.course_id=c.course_id
    right join books b on b.book_id=cb.book_id where c.course_code = 'CT-153' order by cb.cb_id;    
    
/*Gets the Info of Books uploaded By user with user_id 4*/
select upload_id,book_name,uploader_email,admin_email from uploads 
    where uploader_email = (select email from user_account where user_id =4);
    
/*Gets  the details of the users who have uploaded the book*/
select distinct(uploader_email) from uploads 
where uploader_email NOT IN (select distinct(admin_email) from uploads);

/*Gets the number of books uploaded by a single user ... not admin*/
select count(*),uploader_email from uploads
    group by uploader_email having uploader_email not in (select distinct(admin_email) from uploads);
    
    
/*Gets the number of books uploaded by a single admin*/
select count(*),uploader_email from uploads
    group by uploader_email having uploader_email in (select distinct(admin_email) from uploads);
    
/*Gets the user who is an outsider*/
select * from user_account where dept_id is null;

/*Gets all the uploads book and info*/
select * from uploads;


select * from books where book_name LIKE '%Data%';

select * from courses where course_fullname LIKE '%Programming%';

select * from uploads where account_id = 4 AND admin_id =1;

select count(*) from uploads where uploader_email = (select email from user_account where dept_id is null);

select d.dept_name,d.dept_fullname,u.f_name || ' ' || u.l_name as Name,uc.user_cat
    from departments d inner join user_account u on d.dept_id=u.dept_id 
        left join user_category uc on u.user_cat_id=uc.user_cat_id;
