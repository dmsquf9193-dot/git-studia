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
