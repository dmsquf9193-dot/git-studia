-- TCL(트랜잭션) 데이터베이스에서 실행되는 논리적 작업단위
CREATE TABLE db_tcl (
id varchar(50)
);

INSERT INTO db_tcl values('test1');
INSERT INTO db_tcl values('test2');
INSERT INTO db_tcl values('test3');

SELECT *FROM db_tcl;
COMMIT;

UPDATE db_tcl
SET id = 'test4';

SELECT * FROM db_tcl;
ROLLBACK; -- 마지막으로 커밋을 찍은 시점으로 되돌아감