-- SELECT DISTINCT stu_fname AS firstname,stu_lname FROM students;

-- SELECT DISTINCT stu_fname,login_count,course_count FROM students ORDER BY login_count;

-- SELECT DISTINCT stu_fname,login_count,course_count FROM students ORDER BY login_count ASC;

-- SELECT DISTINCT stu_fname,login_count,course_count FROM students ORDER BY login_count DESC;

-- SELECT DISTINCT stu_fname,login_count FROM students ORDER BY login_count DESC LIMIT 0, 5;

-- SELECT stu_fname,stu_lname from students WHERE stu_fname LIKE "%esh";

-- SELECT  COUNT( DISTINCT stu_fname) FROM students;
/*queries from inside out*/

-- SELECT stu_fname,signup_month, COUNT(*) FROM students GROUP BY signup_month;

-- SELECT stu_fname, MAX(login_count) from students;
-- SELECT stu_fname, MIN(login_count) from students;

-- SELECT stu_fname,login_count from students WHERE login_count = (SELECT MAX(login_count) from students);
-- SELECT stu_fname,login_count from students WHERE login_count = (SELECT MIN(login_count) from students);
/*first subqueries will be executed then the main query next to where condition it wil place max/min n then execute main query*/

-- SELECT signup_month,login_count from students 
-- WHERE signup_month = 7;

-- SELECT signup_month, SUM(login_count) from students 
-- GROUP BY signup_month;

-- SELECT signup_month, AVG(login_count) from students 
-- GROUP BY signup_month;

-- SELECT stu_fname,login_count,signup_month,course_count from students
-- WHERE login_count>=20 AND course_count>=5
-- ORDER by login_count ASC;

-- SELECT stu_fname,login_count,signup_month from students
-- WHERE signup_month=7 OR signup_month=10;
/*when u want both from 7th month and 10th month use OR*/

-- SELECT stu_fname,login_count,signup_month from students
-- WHERE signup_month BETWEEN 7 AND 10;

SELECT stu_fname,signup_month,
            CASE
                    WHEN signup_month BETWEEN 7 AND 10 THEN 'early bird'
                    WHEN signup_month BETWEEN 11 AND 12 THEN 'regular user'
                    ELSE '##'
                END AS Custom
            from students;       