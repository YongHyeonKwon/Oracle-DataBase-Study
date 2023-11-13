
SELECT*
from 직원
where 부서id = 'D001';

SELECT *
FROM 직원
WHERE 성별 = '남';


SELECT 직원ID,이름,나이,입사일시
FROM 직원
WHERE 연봉 >= 8000;

SELECT 직원ID,이름,나이,입사일시
FROM 직원
WHERE 연봉 > 9000;

SELECT *
FROM 직원
WHERE 이름 = '이현정';

SELECT *
FROM 직원연락처
WHERE 연락처 = '010-1231-1234';

SELECT 부서명
FROM 부서
WHERE 근무지 = '서울';

SELECT 주소
FROM 직원주소
WHERE 직원ID = 'A0007';

SELECT 연락처
FROM 직원연락처
WHERE 직원ID = 'A0001' AND 구분코드 = '집전화';

SELECT *
FROM 직원
WHERE 부서ID = 'D003' AND 성별 = '여' AND 나이 >= 30;

SELECT *
FROM 직원
WHERE 직원ID = 'A0001' OR 직원ID = 'A0005' OR 직원ID = 'A0007';

SELECT *
FROM 직원
WHERE 부서ID = 'D001' OR 부서ID = 'D002' AND 이름 = '김철수' ;

SELECT *
FROM 직원
WHERE 직원ID IN ('A0001', 'A0003', 'A0006') AND 성별 = '남';

SELECT *
FROM 직원
WHERE 연봉 BETWEEN 2800 AND 3400;

SELECT *
FROM 직원
WHERE 직원ID BETWEEN 'A0001' AND 'A0004';

SELECT *
FROM 직원
WHERE 이름 LIKE '김%';

SELECT *
FROM 직원
WHERE 이름 LIKE '%민%' ;

SELECT *
FROM 부서
WHERE 부서명 LIKE '__부';

SELECT 직원ID, 이름, 나이
FROM 직원
WHERE 이름 LIKE '%철%';

SELECT 직원ID, 연봉, 입사일시
FROM 직원
WHERE 연봉 BETWEEN 7000 AND 9000;

SELECT *
FROM 직원주소
WHERE 주소 LIKE '동구%';

SELECT 직원ID, 입사일시
FROM 직원
WHERE 입사일시 LIKE '___07%';

SELECT *
FROM 직원 A, 부서 B;

SELECT *
FROM 직원 A, 부서 B
WHERE A.부서ID = B.부서ID ;

SELECT *
FROM 직원 A, 직원연락처 B
WHERE a.직원id = b.직원id;

SELECT  A.직원ID, A.이름, B.주소
FROM 직원 A, 직원주소 B
WHERE a.직원ID = b.직원ID;


 