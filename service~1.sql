
SELECT ����ID, �Ի��Ͻ�, �ֹε�Ϲ�ȣ, ����, �μ�ID
FROM ����;

SELECT *
FROM ���� ;

SELECT *
FROM �����ּ�;

SELECT DISTINCT ����
FROM ����;

SELECT *
FROM ��������ó;

SELECT DISTINCT ����ID
FROM ��������ó;

SELECT ���� + 2500 AS ����
FROM ����; A;

SELECT ����ID, ����, NVL(����, 0)
FROM ���� ;

SELECT *
FROM ����
WHERE ���� IS NOT NULL ;

SELECT *
FROM ����
WHERE �Ի��Ͻ� IS NULL ;

SELECT ����ID,�н�����,NVL(����, 20) AS ����
FROM ���� ;

SELECT ����ID,����,���� ,DECODE(����,'��','�����Դϴ�','�����Դϴ�') AS ����Ȯ��
FROM ���� ;

SELECT *
FROM ����;

SELECT LOWER ('ABCDE123@@') AS LOWER���
FROM DUAL ;

SELECT *
FROM DUAL ;

SELECT �н�����, UPPER(�н�����)
FROM ����;

SELECT �н�����, SUBSTR(�н�����, 2, 3)
FROM ����;

SELECT TRIM('     ������    '),TRIM('     ��    ��    ��    ')
FROM DUAL ;

SELECT ����ID,�ֹε�Ϲ�ȣ, SUBSTR(�ֹε�Ϲ�ȣ, 1, 6) AS �������
FROM ���� ;

SELECT ����ID,�����ڵ�,����ó,REPLACE(����ó,'-','') AS ����ó��ȣ��
FROM ��������ó ;

SELECT ����, MOD(����, 1000)
FROM ����;

SELECT ROUND(1.452, 2), ROUND(1.452, 1)
FROM DUAL ;

SELECT ROUND(3.1415,3), CEIL(3.1415), FLOOR(3.1415), TRUNC(3.1415,3),ABS(-3.1415)
FROM DUAL ;

SELECT SYSDATE
FROM DUAL;

SELECT TO_NUMBER('1') FROM DUAL ;
SELECT TO_CHAR(1) FROM DUAL ;
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS') FROM DUAL ;
SELECT TO_DATE ('20230101', 'YYYY/MM/DD') FROM DUAL;
SELECT TO_DATE('20230101141212', 'YYYY/MM/DD HH24:MI:SS') FROM DUAL;

SELECT '10' + 1000
FROM DUAL ;
