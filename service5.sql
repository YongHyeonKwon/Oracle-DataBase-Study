SELECT *
FROM ���� A
WHERE ���� IN (
               SELECT ���� 
               FROM ����
               WHERE �μ�ID = 'D001' );

SELECT ����ID, ����
FROM ����
WHERE ���� <= ANY(5000, 7500, 2800) ;

SELECT ����ID, ����
FROM ����
WHERE ���� >= ANY(5000, 7500, 2800) ;

SELECT ����ID, ����
FROM ����
WHERE ���� <= ALL (5000, 7500, 2800) ;

SELECT ����ID, ����
FROM ����
WHERE ���� >= ALL (5000, 7500, 2800) ;

SELECT �̸�, ����
FROM ����
WHERE ���� IN
(SELECT ����
FROM ����
WHERE ����ID = 'A0006');

SELECT ����ID, �̸�
FROM ���� A
WHERE EXISTS(SELECT 1
             FROM ��������ó
             WHERE ����ID = A.����ID);
             
SELECT ����ID, �̸�
FROM ���� A
WHERE ����ID IN (SELECT ����ID
             FROM ��������ó
             WHERE ����ID = A.����ID);
             
