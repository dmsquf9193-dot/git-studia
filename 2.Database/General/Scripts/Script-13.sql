CREATE TABLE member_notnull (
    id varchar(50) NOT NULL,
    pwd varchar(250) NOT NULL,
    name varchar(50),
    age int,
    in_date datetime
);

INSERT INTO member_notnull
VALUES('test', 'qwer1234!', NULL, NULL, now());

INSERT INTO member_notnull (id, pwd, in_date)
VALUES('test2', 'qwer1234!', now());

SELECT * FROM member_notnull;

#######################################################
CREATE TABLE member_notnull(
id varchar(50) NOT NULL UNIQUE 
pwd varchar(250) NOT NULL
 );

INSERT INTO member_unique VALUES ('test', 'qwer1234!');
INSERT INTO member_unique VALUES ('test', 'qwer1234!');

#############################################################
CREATE TABLE member_unique ( 
gender varchar(1) CHECK(gender IN ('W','M'))
);

INSERT INTO member_check values('W');
INSERT INTO member_check values('w');
INSERT INTO mamber_check values('werwe');
SELECT * FROM member_check;

####################################################################
CREATE TABLE member_default ( 
id varchar(50),
in_date datetime DEFAULT now()
);

INSERT INTO member_default(id) VALUES('test');
-- INSERT INTO member_default(id) VALUES('test', null);
SELECT * FROM member_default;
#########################################################################
-- PRIMARY KEY(PK) 관계형 데이터베이스의 핵심 *NULL이 들어올 수 없음
CREATE TABLE member_pk (
 member_pk_id int PRIMARY KEY auto_increment,
 id varchar(50)
);
-- 중복 안되고 빈 값이 들어갈 수 없음
DROP TABLE member_pk;
-- INSERT INTO member_pk VALUES(1, 'test');

--값을 1씩 증가시켜주는 것
INSERT INTO member_pk(id) VALUES('test');
INSERT INTO member_pk VALUES(null, 'test');
SELECT * FROM member_pk;
########################################################################
-- FOREIGN KEY(fk) 관계형 테이블의 핵심
-- 데이터가 서로 같아야 함
CREATE TABLE member_primary(
member_primary_id int PRIMARY KEY AUTO_INCREMENT,
id varchar(50)
);

CREATE TABLE board_foreign(
board_foreign_id int PRIMARY KEY AUTO_INCREMENT,
title varchar(300),
writer_id int, 
CONSTRAINT fk_wriker FOREIGN KEY (writer_id)
REFERENCES member_primary(member_primary_id)
ON DELETE CASCADE  
);

DROP TABLE board_foreign;

INSERT INTO member_primary(id)
VALUES('test1'),
      ('test2'),
      ('test3');

SELECT * FROM member_primary;

INSERT INTO board_foreign(title, writer_id) VALUES('게시글 제목!!', 1);
SELECT * FROM board_foreign;

DELETE FROM member_primary 
WHERE member_primary_id = 1;

SELECT * FROM member_primary;
























-- Q1. employees 테이블의 모든 데이터를 조회하세요.
SELECT * FROM employees;

-- Q2. employees 테이블에서 성별이 'M' 인 사원만 조회하세요.
SELECT * FROM employees
WHERE gender='M';
-- Q3. employees 테이블에서 1990년 이후 입사한 사원만 조회하세요.
SELECT * FROM employees 
WHERE hire_date >= '1990-01-01';
-- Q4. employees 테이블에서 first_name이 'Georgi' 인 사원을 조회하세요.
SELECT * FROM employees
WHERE first_name = 'Georgi';
-- Q5. employees 테이블에서 사번(emp_no)이 10010인 사원을 조회하세요.
SELECT * FROM employees 
WHERE emp_no = '10010'; 

SELECT * FROM employees;
-- Q6. departments 테이블의 모든 부서를 조회하세요.
SELECT * FROM departments;
-- Q7. departments 테이블에서 부서명이 'Tech Sales' 인 부서를 조회하세요.
SELECT * FROM departments
WHERE dept_name = 'Tech Sales';
SELECT * FROM departments;
########################################
SELECT * FROM departments;
-- Q9. 새로운 부서 'AI Research' 를 추가하세요.
INSERT INTO departments
VALUES (1, 'AI Research');
SELECT * FROM departments;


-- Q10. 새로운 사원 데이터를 employees 테이블에 추가하세요.
 -- 사번: 999001
 -- 이름: Kim Jaeseop
 -- 성별: M
 -- 입사일: 2026-01-01

INSERT INTO employees
VALUES(999001,
now(),
'Jaeseop',
'kim',
'M',
'2026-01-01');

SELECT * FROM employees;
-- 찾아보기
SELECT * FROM employees
WHERE emp_no = '999001';

-- Q11. titles 테이블에 사번 1의 직급을 'Engineer' 로 추가하세요.
 -- 퇴사일(to_date) : null
SELECT * FROM titles;

INSERT INTO titles 
VALUES (1,
'Engineer',
now(),
NULL);
SELECT * FROM titles;

-- Q12. salaries 테이블에 사번 999001의 급여를 60000으로 추가하세요.
  -- 사번 : emp_no
  -- 급여 : salarry
  -- 참고 : from_date 컬럼은 '2026-01-01', to_date 컬럼은 '9999-01-01'

SELECT * FROM salaries;
WHERE emp_no = '999001';

INSERT INTO salaries
VALUES(999001,
60000,
'2026-01-01',
'9999-01-01');
SELECT * FROM salaries;
 
 
###########################################
-- Q13. 사번 1의 급여를 65000으로 수정하세요.
 -- 급여(salaries) 테이블에서 진행

UPDATE salaries 
SET salary = '65000',
WHERE emp_no ='1';
SELECT * FROM salaries;

-- Q14. 사번 1의 성별을 'F' 로 변경하세요.
 -- 직원(employees) 테이블에서 진행

UPDATE employees 
SET gender = 'F',
WHERE emp_no = '1';
SELECT * FROM employees;

-- Q15. 사번 1의 직급을 'Senior Engineer' 로 변경하세요.
 -- 직함(titles) 테이블에서 진행
SELECT * FROM titles;
UPDATE titles 
SET title = 'Senior Engineer',
WHERE emp_no = '1';
-----------------------------------------------
-- Q16. 급여, 직원 테이블에서 사번 10013 직원을 제거하세요.
  -- 급여 테이블 -> 직원 테이블 순서대로 진행하셔야 합니다.
DELETE FROM titles 
WHERE emp_no = '10013';


SELECT emp_no AS '사번', salary /12 AS '월급' FROM salaries;
SELECT emp_no+ 50, firet_name FROM employees;
WHERE firet_name = '체리';

SELECT DISTINCT gender FROM employees;

-- salaries 테이블에서 salary 컬럼의 값을 월급이라고 가정
-- 1. 월급 (기존값)
-- 2. 예상 연봉(salary * 12) 별칭은 "예상 연봉"
-- 3. 5% 인상 후의 예상 연봉 (salary * 12 * 1.05) 별칭은 "인상 후 예상 연봉"

SELECT salary FROM salaries;
SELECT salary * 12 AS '예상 연봉' FROM salaries;
SELECT salary * 12 * 1.05 AS '인상 후 예상 연봉' FROM salaries;

SELECT salary * 12 AS '예상 연봉', 
       salary * 12 * 1.05 AS '인상 후 예상 연봉' FROM salaries;

 SELECT emp_no, salary, from_date, to_date FROM salaries
 WHERE salary >= 80000;
 
 SELECT * FROM employees
 WHERE emp_no < 10005;
 
 -- 입사일이 1960년 1월 1일 이후이면서 성별이 남자인 직원 조회
 -- 우선순위가 AND 연산이 먼저 그다음 OR연산
 
 SELECT * FROM employees
 WHERE hire_date > '1960-01-01'
 AND gender = 'm';
 
 SELECT * FROM titles
 WHERE title = 'Senior Engineer'
 OR title = 'Engineer';
 
 -- salaries 테이블에서 연봉이 50000 이상이면서 60000 이하인 직원 조회
 SELECT * FROM salaries
 WHERE salary >= 50000
 AND salary <=60000;
 
 -- salaries 테이블에서 연봉이 50000 이상이면서 60000 이하인 직원 조회
 SELECT * FROM salaries
 WHERE salary BETWEEN 50000 AND 60000;
 
 SELECT * FROM employees
 WHERE hire_date BETWEEN '1995-01-01' AND '1995-12-31';
 
 -- % 앞에 오는 것, 뒤에 오는 것 
 SELECT * FROM employees
 WHERE first_name LIKE 'N%';
 
 SELECT * FROM employees
 WHERE first_name LIKE '%en';
 
 SELECT * FROM employees
 WHERE first_name LIKE '%ar%';
 
-- _ 1개당 글자 1개 not을 넣으면 _ 빼고 다
 SELECT * FROM employees
 WHERE first_name LIKE '_di';
 
 SELECT * FROM employees
 WHERE first_name LIKE 'G__';
 
 -- IS NULL 
 SELECT * FROM titles
 WHERE to_date IS NULL;
 
  SELECT * FROM titles
 WHERE to_date IS NOT NULL;
  
 -- IN 여러개의 값을 찾고싶을 때 사용
  SELECT * FROM departments
  WHERE dept_no IN('d005', 'd006');
 -- IN 키워드 안쓸 때
  WHERE dept_no = 'd005'
  OR dept_no = 'd006'
  
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
