/*for concatination of firstname and lastname*/
-- SELECT CONCAT(stu_fname,' ',stu_lname) AS fullname FROM students;

-- SELECT CONCAT(stu_fname,' ',stu_lname) AS fullname,login_count FROM students;

-- SELECT CONCAT(stu_fname,' ',stu_lname,' ','and',' ','course count is',' ',course_count) AS 'full info' FROM students;

-- SELECT REPLACE(stu_fname,'a','@') AS fun FROM students;

-- SELECT SUBSTRING(stu_fname,1,4)FROM students;

-- SELECT CONCAT(SUBSTRING(stu_fname,1,4),"...") FROM students;

-- SELECT stu_fname, CHAR_LENGTH(stu_fname) AS Length FROM students;

-- SELECT UPPER(stu_fname) AS uppername FROM students;

SELECT LOWER(stu_fname) AS lowername FROM students;