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























