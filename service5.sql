SELECT *
FROM 직원 A
WHERE 연봉 IN (
               SELECT 연봉 
               FROM 직원
               WHERE 부서ID = 'D001' );

SELECT 직원ID, 연봉
FROM 직원
WHERE 연봉 <= ANY(5000, 7500, 2800) ;

SELECT 직원ID, 연봉
FROM 직원
WHERE 연봉 >= ANY(5000, 7500, 2800) ;

SELECT 직원ID, 연봉
FROM 직원
WHERE 연봉 <= ALL (5000, 7500, 2800) ;

SELECT 직원ID, 연봉
FROM 직원
WHERE 연봉 >= ALL (5000, 7500, 2800) ;

SELECT 이름, 연봉
FROM 직원
WHERE 연봉 IN
(SELECT 연봉
FROM 직원
WHERE 직원ID = 'A0006');

SELECT 직원ID, 이름
FROM 직원 A
WHERE EXISTS(SELECT 1
             FROM 직원연락처
             WHERE 직원ID = A.직원ID);
             
SELECT 직원ID, 이름
FROM 직원 A
WHERE 직원ID IN (SELECT 직원ID
             FROM 직원연락처
             WHERE 직원ID = A.직원ID);
             
