SELECT ����ID, ����
FROM ����
WHERE ����ID = 'A0005' ;

UPDATE ���� SET ���� = 6000
WHERE ����ID = 'A0005' ;

COMMIT ;

ROLLBACK ; 

SELECT *
FROM (SELECT ROWNUM AS RN,
����ID, �̸�, ����, �μ�ID
FROM ����)
WHERE RN = 3;

SELECT *
FROM(SELECT *
     FROM ����
     WHERE ���� IS NOT NULL
     ORDER BY ���� DESC) 
WHERE ROWNUM <=5 ;