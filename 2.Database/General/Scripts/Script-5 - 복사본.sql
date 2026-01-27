-- 오름차순
SELECT *FROM employees
ORDER BY  birth_date;

-- 내림차순
SELECT *FROM employees
ORDER BY  birth_date DESC;

-- 올림차순
SELECT *FROM employees
ORDER BY  birth_date ASC;

SELECT * FROM titles
ORDER BY to_date DESC;

-- 가장 높은 값을 찾을 때
SELECT max(salary) FROM salaries;
-- 가장 낮은 값을 찾을 때
SELECT min(salary) FROM salaries;
-- 평균값
SELECT avg(salary) FROM salaries;
-- 합계
SELECT sum(salary) FROM salaries;
-- 조회된 컬럼의 갯수
SELECT count(*) FROM salaries;

-- 직원 명수 조회
SELECT count(*) AS '직원 수' FROM employees;
############################################################
SELECT count(*) FROM titles
WHERE title = 'engineer';

SELECT count(*) FROM employees
WHERE hire_date > '1965-01-01';

SELECT min(emp_no), max(emp_no) FROM employees;

-- 그룹함수를 쓸때 같이 쓴다.
SELECT max(emp_no), first_name, birth_date FROM employees
GROUP BY first_name, birth_date;

-- 부서별 직원 수를 구하시오. dept_emp
-- 직원 수(), 부서 번호(dept_no) 조회
-- 부서 번호의 값을 기준으로 직원들의 수 조회
SELECT count(*), dept_no FROM dept_emp
GROUP BY dept_no; 

-- 실습
SELECT count(*), gender FROM employees
GROUP BY gender;

SELECT count(*), title FROM titles
GROUP BY title
ORDER BY count(*),title DESC;

-- 비교할 때 HAVING
SELECT count(*), title FROM titles
GROUP BY title
HAVING count(*) >= 100000
ORDER BY title DESC;

-- dept_emp에서 직원 수가 50000 이상인 부서만 조회
SELECT count(*), dept_no FROM dept_emp
GROUP BY dept_no
HAVING count(*) >= 50000;

-- 현재 재직중인 직원들 중 직무별 직원 수가 200명 미만인 직무만 조회
-- to_date가 9999-01-01이 재직중
SELECT title, count(*) FROM titles
WHERE to_date = '9999-01-01'
GROUP BY title
HAVING count(*) < 200
ORDER BY title DESC;












