SELECT *
FROM 직원 ; 

UPDATE 직원 SET 부서ID = NULL
WHERE 직원ID = 'A0005' ;

SELECT *
FROM 직원 A, 부서 B
WHERE A.부서ID(+) = B.부서ID ;

SELECT A.직원ID AS 직원_직원ID, A.성별, A.나이, B.직원ID AS 주소_직원ID, B.구분코드, B.주소 
FROM 직원 A, 직원주소 B
WHERE A.직원ID = B.직원ID
AND A.직원ID =  'A0007';

SELECT A.직원ID AS 직원_직원ID, A.이름, A.연봉, B.직원ID AS 주소_직원ID, B.구분코드, B.주소
FROM 직원 A, 직원주소 B 
WHERE A.직원ID = B.직원ID(+);

SELECT A.직원ID AS 직원_직원ID, A.이름, A.연봉, 
B.직원ID AS 주소_직원ID, B.구분코드, B.주소
FROM 직원 A, 직원주소 B 
WHERE A.직원ID = B.직원ID(+)
AND B.주소 IS NULL ;

SELECT A.직원ID, A.이름, A.나이, C.연락처, B.주소
FROM 직원 A, 직원주소 B, 직원연락처 C
WHERE A.직원ID = B.직원ID AND A.직원ID = C.직원ID;

SELECT A.직원ID, A.이름, A.입사일시, B.연락처
FROM 직원 A, 직원연락처 B
WHERE A.직원ID = B.직원ID
AND A.직원ID IN ('A0001', 'A0002', 'A0003')
AND B.구분코드 = '휴대폰' ;

SELECT A.직원ID, A.이름, B.부서ID, B.부서명
FROM 직원 A, 부서 B
WHERE A.부서ID = B.부서ID;

SELECT A.직원ID, A.이름, B.주소
FROM 직원 A LEFT OUTER JOIN 직원주소 B
ON (A.직원ID = B.직원ID(+))
WHERE A.직원ID BETWEEN 'A0005' AND 'A0008' ; 

SELECT A.직원ID, A.이름, B.주소
FROM 직원 A FULL OUTER JOIN 부서 B
ON (A.부서ID = B.부서ID);

SELECT A.직원ID, A.이름, B.주소
FROM 직원 A LEFT OUTER JOIN 직원주소 B
ON (A.직원ID = B.직원ID)
WHERE A.직원ID IN ('A0005' , 'A0008');

SELECT B.직원ID, B.이름, A.주소
FROM 직원주소 A RIGHT OUTER JOIN 직원 B
ON (A.직원ID = B.직원ID);

SELECT A.직원ID, A.이름, A.나이, B.연락처
FROM 직원 A INNER JOIN 직원연락처 B
ON (A.직원ID = B.직원ID) ;

DROP TABLE 수강생정보 CASCADE CONSTRAINTS; 
DROP TABLE 성적표 CASCADE CONSTRAINTS; 

CREATE TABLE 수강생정보 (
학생ID VARCHAR2(9) PRIMARY KEY , 
학생이름 VARCHAR2(50) NOT NULL , 
소속반 VARCHAR2(5) 
); 

CREATE TABLE 성적표 ( 
    학생ID VARCHAR2(9) , 
    과목   VARCHAR2(30) , 
    성적   NUMBER  , 
    CONSTRAINT PK_성적표 PRIMARY KEY(학생ID , 과목) , 
    CONSTRAINT FK_성적표_REF_수강생 FOREIGN KEY(학생ID) REFERENCES 수강생정보(학생ID) 
)  ; 

INSERT INTO 수강생정보 VALUES ('S0001' , '김현철' , 'A') ; 
INSERT INTO 수강생정보 VALUES ('S0002' , '문현중' , 'A') ; 
INSERT INTO 수강생정보 VALUES ('S0003' , '강문치' , 'B') ; 
INSERT INTO 수강생정보 VALUES ('S0004' , '박나선' , 'B') ; 
INSERT INTO 수강생정보 VALUES ('S0005' , '신태강' , 'B') ; 
INSERT INTO 수강생정보 VALUES ('S0006' , '물고기' , 'C') ; 
INSERT INTO 수강생정보 VALUES ('S0007' , '자라니' , 'C') ; 
INSERT INTO 수강생정보 VALUES ('S0008' , '공팔두' , 'C') ; 
INSERT INTO 수강생정보 VALUES ('S0009' , '최팔현' , 'C') ; 

INSERT INTO 성적표 VALUES('S0001'  ,'국어' , 90); 
INSERT INTO 성적표 VALUES('S0001'  ,'수학' , 85); 
INSERT INTO 성적표 VALUES('S0001'  ,'영어' , 100); 
INSERT INTO 성적표 VALUES('S0002'  ,'국어' , 100); 
INSERT INTO 성적표 VALUES('S0002'  ,'수학' , 100); 
INSERT INTO 성적표 VALUES('S0002'  ,'영어' , 20); 
INSERT INTO 성적표 VALUES('S0003'  ,'국어' , 100); 
INSERT INTO 성적표 VALUES('S0003'  ,'수학' , 100); 
INSERT INTO 성적표 VALUES('S0003'  ,'영어' , 20); 
INSERT INTO 성적표 VALUES('S0004'  ,'국어' , 85); 
INSERT INTO 성적표 VALUES('S0004'  ,'수학' , 40); 
INSERT INTO 성적표 VALUES('S0004'  ,'영어' , 60); 
INSERT INTO 성적표 VALUES('S0005'  ,'국어' , 100); 
INSERT INTO 성적표 VALUES('S0005'  ,'수학' , 100); 
INSERT INTO 성적표 VALUES('S0005'  ,'영어' , 100); 
INSERT INTO 성적표 VALUES ( 'S0006' , '국어' , NULL ) ; 
INSERT INTO 성적표 VALUES ( 'S0006' , '수학' , NULL ) ; 
INSERT INTO 성적표 VALUES ( 'S0006' , '영어' , NULL ) ; 

COMMIT; 

SELECT *
FROM 수강생정보;

SELECT *
FROM 성적표;


SELECT 소속반, COUNT(학생이름)
FROM 수강생정보
GROUP BY 소속반 ;
