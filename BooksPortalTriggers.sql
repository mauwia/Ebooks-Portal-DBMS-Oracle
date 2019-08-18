--Creating Triggers
/*adding the user into the accounts table*/
CREATE OR REPLACE TRIGGER ADD_USER_INTO_ACCOUNTS
AFTER INSERT ON user_account FOR EACH ROW
BEGIN
INSERT INTO accounts(account_id,account_email,is_admin) VALUES(ACCOUNT_SEQ.NEXTVAL,:NEW.email,'N');
END;

/*adding the admin into the accounts table*/
CREATE OR REPLACE TRIGGER ADD_ADMIN_INTO_ACCOUNTS
AFTER INSERT ON admins FOR EACH ROW
BEGIN
INSERT INTO accounts(account_id,account_email,is_admin) VALUES(ACCOUNT_SEQ.NEXTVAL,:NEW.email,'Y');
END;

/*adding the uplads books into the books table*/
CREATE OR REPLACE TRIGGER ADD_UPLOAD_INTO_BOOKS
AFTER INSERT ON uploads FOR EACH ROW
BEGIN
INSERT INTO books(book_id,book_name,upload_id) VALUES(BOOKS_SEQ.NEXTVAL,:NEW.book_name,:NEW.upload_id);
END;

/*adding uploaders email into the uploads table*/
CREATE OR REPLACE TRIGGER ADD_UPLOADER_EMAIL
BEFORE INSERT ON uploads FOR EACH ROW
DECLARE uploaders_email varchar2(200);
BEGIN
SELECT account_email into uploaders_email 
    from accounts where account_id=:NEW.account_id;
    :NEW.uploader_email:=uploaders_email;

END;

/*adding admins email into the uploads table*/
CREATE OR REPLACE TRIGGER ADD_ADMIN_EMAIL
BEFORE INSERT ON uploads FOR EACH ROW
DECLARE admins_email varchar2(200);
BEGIN
SELECT email into admins_email 
    from admins where admin_id=:NEW.admin_id;
    :NEW.admin_email:=admins_email;
END;