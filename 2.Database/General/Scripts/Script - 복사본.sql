-- employess라는 데이터베이스 선택
use employees;

-- select emp_no, first_name from employees;
select * from employees; -- 최대한 안쓰는 게 좋음 (성능이슈)

select emp_no, birth_date from employees;
select hire_date from employees;
select emp_no,from_date,to_date from dept_manager;
select * from departments;

-- 문법에 맞춰서 값을 순서대로 삽입(한줄로 적으면 안됨)
insert into employees
values (1,
'2000-01-01',
'Jaeseop',
'Kim',
'M',
now()); -- > 현재 날짜

select  * from employees;

INSERT INTO departments
VALUES ("d010",
'Korea IT Department',); 

INSERT INTO employees
VALUES (2,
"2002-01-01",
"Eunbyeol",
"Ko",
"F",
now()); 

INSERT INTO dept_emp
VALUES (1,
"d010",
now(),
"9999-01-01",); 

SELECT * FROM departments;

UPDATE employees
SET first_name = '체리'
WHERE emp_no = 10001;

UPDATE employees
SET last_name = '김',
hire_date = NOW()
WHERE emp_no = 10001;

SELECT * FROM employees;

UPDATE departments
SET dept_name = 'Tech Sales'
WHERE dept_no = 'd007';

SELECT * FROM departments;

UPDATE employees
SET birth_date = '1997-07-07'
WHERE last_name = 'Erie';

SELECT * FROM employees;

SELECT * FROM employees
WHERE last_name = 'Erie';

# 삭제
DELETE FROM employees 
WHERE emp_no = 10005;
SELECT * FROM employees;

DELETE FROM employees 
WHERE hire_date = '1993-05-12';
SELECT * FROM employees;

# emp_no = 28847

DELETE FROM employees 
WHERE emp_no = 28847;
SELECT * FROM employees;


CREATE TABLE test_member (
member_id varchar(50) COMMENT '아이디',
member_pwd varchar(255) COMMENT '비밀번호',
member_name varchar(50) COMMENT '이름',
member_age TINYINT COMMENT '나이',
member_in_date datetime COMMENT '가입일'
);

CREATE TABLE FREE_BOARD (
BOARD_NO INT COMMENT '게시판 번호',
BOARD_TITLE VARCHAR(100) COMMENT '게시판 제목',
BOARD_CONTENT TEXT COMMENT '게시판 내용',
BOARD_DATE DATETIME COMMENT '게시판 작성일',
BOARD_VIEWS INT COMMENT '게시판 조회수'
);

INSERT INTO free_board
VALUES ( 1,
'제목입니다.',
'내용입니다.',
NOW(), 
1);

SELECT * FROM free_board;

CREATE TABLE ddl_alter_test (
alter_id varchar(255),
alter_name varchar(255),
alter_as varchar(255)
);

-- 테이블 이름 변경
ALTER TABLE ddl_alter_test RENAME TO ddl_alter;

-- 테이블 구조 변경 (컬럼 변경)
ALTER TABLE ddl_alter
MODIFY alter_as varchar(100);

-- 테이블 구조 변경 (컬럼 추가)
ALTER TABLE ddl_alter 
ADD alter_pwd varchar(255);

-- 테이블 구조 변경 (컬럼 삭제)
ALTER TABLE ddl_alter DROP COLUMN alter_as;

-- alter_name이라는 컬럼에 중복된 값이 들어가서는 안된다라는 조건을 추가
ALTER TABLE ddl_alter 
ADD CONSTRAINT alter_name_unique UNIQUE (alter_name);

INSERT INTO ddl_alter 
VALUES (
"cherry",
"체리",
'qwer1234!');

INSERT INTO ddl_alter 
VALUES (
"test",
"체리",
'qwer1234!');

-- MySQL에서는 지원하지 않고, 수정하려면 제거 후 다시 추가(오라클에서는 가능)
-- ALTER TABLE ddl_alter 
-- RENAME CONSTRAINT alter_name_unique TO name_unique;

ALTER TABLE ddl_alter 
DROP CONSTRAINT alter_name_unique;

ALTER TABLE ddl_alter
RENAME TO name_uniqe;

CREATE TABLE test_employees(
te_employees_id INT,
te_first_name varchar(50),
te_last_name varchar(50),
te_salary int,
te_department varchar(50));

-- 테이블 이름 변경
ALTER TABLE test_employees RENAME TO STAFF;
-- 컬럼의 데이터 형식 변경
ALTER TABLE staff MODIFY te_department varchar(100);
-- 컬럼의 이름 변경
ALTER TABLE staff RENAME COLUMN te_last_name TO Surname;
-- 컬럼 삭제
ALTER TABLE staff DROP COLUMN te_first_name;
-- 데이터 형식의 새로운 컬럼 추가
ALTER TABLE staff ADD COLUMN te_hire_date datetime;
-- 제약 조건 추가
ALTER TABLE staff ADD CONSTRAINT te_salary UNIQUE (te_salary);

DROP TABLE  ddl_alter;
DROP TABLE free_board;
DROP TABLE staff;
DROP TABLE test_member;




















