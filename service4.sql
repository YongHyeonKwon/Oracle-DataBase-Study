SELECT *
FROM(
SELECT *
FROM ����
WHERE ���� IS NOT NULL
ORDER BY  ����)
WHERE ROWNUM <= 3 ;

SELECT *
FROM(
SELECT *
FROM ����
WHERE �Ի��Ͻ� IS NOT NULL
ORDER BY �Ի��Ͻ� DESC)
WHERE ROWNUM <= 3 ;

CREATE TABLE �Խ��� ( 
�Խ��ǹ�ȣ NUMBER(9) PRIMARY KEY , 
�ۼ���       VARCHAR2(50) NOT NULL , 
�Խù����� VARCHAR2(4000) NOT NULL  , 
�ۼ��Ͻ� DATE   NOT NULL 
) ;

INSERT INTO �Խ���
SELECT LEVEL                                -- �Խ��ǹ�ȣ
        , '���̵�' || MOD(LEVEL , 10000)     -- �ۼ��� 
        , '���̵�' || 
           MOD(LEVEL , 10000) || 
           '���� �ۼ��Ͻ� �Խù��Դϴ�. �� �Խù��� �Խ��� ��ȣ�� ' 
           || LEVEL 
           || '�Դϴ�'                       -- �Խù����� 
      , TO_DATE('20000101') + LEVEL         --2022�� 1��1�Ϻ��� �Ϸ羿 �Խù��� �ԷµǴ� ��
  FROM DUAL
CONNECT BY LEVEL <=1000000;                 --100������ ������ �Է� 

COMMIT; 


SELECT *
FROM(
(SELECT ROWNUM AS RN, A.*
FROM (
   SELECT *
   FROM �Խ���
   ORDER BY �ۼ��Ͻ� DESC )A
WHERE ROWNUM <= 60 )
) WHERE RN >= 41;

SELECT *
FROM �Խ���;

SELECT A.����ID, A.����, A.�μ�ID, (
SELECT �μ���
FROM �μ�
WHERE �μ�ID = A.�μ�ID) AS �μ���
FROM ���� A
WHERE ����ID BETWEEN 'A0001' AND 'A0006' ;

SELECT A.����ID, A.����, A.�μ�ID, B.�μ���
FROM ���� A, �μ� B 
WHERE A.�μ�ID = B.�μ�ID(+)
AND A.����ID BETWEEN 'A0001' AND 'A0006' ;

SELECT A.����ID, A.����, A.�μ�ID,
(SELECT �μ���
FROM �μ�
WHERE �μ�ID = A.�μ�ID) AS �μ���
FROM ���� A
WHERE A.����ID BETWEEN 'A0001' AND 'A0006' ;

SELECT A.����ID, A.����, A.�μ�ID, B.�μ���
FROM ���� A, �μ� B
WHERE A.�μ�ID = B.�μ�ID(+)
AND ����ID BETWEEN 'A0001' AND 'A0006';


SELECT A.����ID, A.�̸�, A.�ֹε�Ϲ�ȣ,(
       SELECT ����ó
       FROM ��������ó
       WHERE ����ID = A.����ID AND �����ڵ� = '�޴���')
       AS �޴�����ȣ
FROM ���� A
WHERE A.����ID BETWEEN 'A0006' AND 'A0010' ;

SELECT A.����ID, A.�̸�, A.�ֹε�Ϲ�ȣ, B.����ó
FROM ���� A, ��������ó B
WHERE A.����ID = B.����ID(+) AND A.����ID BETWEEN 'A0006' AND 'A0010'
AND B.�����ڵ� = '�޴���' ;

SELECT *
FROM (SELECT *
      FROM ����
      ORDER BY ����)
WHERE ROWNUM <=3;
      
SELECT *
FROM ����
WHERE ���� >= (SELECT AVG(����)
              FROM ���� ) ;
              
SELECT *
FROM ���� A
WHERE ���� = (SELECT MAX(����)
              FROM ����  
              WHERE �μ�ID = A.�μ�ID);
              
SELECT *
FROM ����
WHERE �Ի��Ͻ� = (SELECT MAX(�Ի��Ͻ�)
                FROM ����);
                
SELECT *
FROM ����
WHERE ���� = (SELECT MAX(����)
             FROM ����);