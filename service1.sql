CREATE TABLE QUIZ_TABLE(
Q_ID NUMBER(3, 0) NOT NULL ,
Q_CONTENT VARCHAR2(200) NOT NULL ,
Q_ANSWER VARCHAR(100) ,
REG_DATE DATE DEFAULT SYSDATE ,
Q_BINGO VARCHAR(100) DEFAULT 'O'
) ;

SELECT *
FROM quiz_table ;

ALTER TABLE 직원 ADD (생년월일 VARCHAR2(8));

SELECT *
FROM 직원;

ALTER TABLE 직원 DROP COLUMN 생년월일;

ALTER TABLE 직원 MODIFY (패스워드 VARCHAR2(300)) ;

ALTER TABLE 직원 RENAME COLUMN 비밀번호 TO 패스워드 ;

CREATE TABLE 회원정보(
회원ID VARCHAR2(10) NOT NULL ,
이름 VARCHAR2(20)NOT NULL ,
가입일자 DATE ,
나이 NUMBER(3) DEFAULT 0
);

CREATE TABLE 회원연락처(
회원ID VARCHAR2(10) NOT NULL ,
구분코드 VARCHAR2(10 )NOT NULL ,
연락처 VARCHAR2(15) NOT NULL
);

CREATE TABLE 회원주소(
회원ID VARCHAR2(10) NOT NULL ,
도로명주소 VARCHAR2(20)NOT NULL
) ;

ALTER TABLE 회원정보 ADD CONSTRAINT PK_회원정보 PRIMARY KEY(회원ID);

ALTER TABLE 회원연락처 ADD CONSTRAINT PK_회원연락처 PRIMARY KEY(회원ID, 구분코드);

ALTER TABLE 회원주소 ADD CONSTRAINT PK_회원주소 PRIMARY KEY (회원ID);

ALTER TABLE 회원연락처 ADD CONSTRAINT FK_회원연락처
FOREIGN KEY (회원ID) REFERENCES 회원정보(회원ID) ;

ALTER TABLE 회원주소 ADD CONSTRAINT FK_회원주소
FOREIGN KEY (회원ID) REFERENCES 회원정보(회원ID) ;

DROP TABLE 회원정보 CASCADE CONSTRAINTS;

CREATE SEQUENCE 회원ID_SEQ  ; 

SELECT 회원ID_SEQ.NEXTVAL
FROM DUAL ;

SELECT *
FROM 직원 ;

DROP TABLE 직원_TT ;
DROP SEQUENCE 직원ID_SEQ_TT ;

CREATE TABLE 직원_TT (
  직원ID VARCHAR2(30) PRIMARY KEY , 
  이름 VARCHAR2(50) 
) ;

CREATE SEQUENCE 직원ID_SEQ_TT INCREMENT BY 1 ;

INSERT INTO 직원_TT (직원ID , 이름 ) 
VALUES ( 'A' || LPAD( 직원ID_SEQ_TT.NEXTVAL , 4 , '0') , 'DDD');

SELECT * FROM 직원_TT ;

DROP SEQUENCE 회원ID_SEQ ;

CREATE VIEW 부서별최고연봉_VIEW AS
SELECT 부서ID, MAX(연봉) AS 부서별최고연봉
FROM 직원
GROUP BY 부서ID
ORDER BY 부서ID ;

SELECT *
FROM 부서별최고연봉_VIEW ;
