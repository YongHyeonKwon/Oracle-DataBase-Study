
SELECT*
from ����
where �μ�id = 'D001';

SELECT *
FROM ����
WHERE ���� = '��';


SELECT ����ID,�̸�,����,�Ի��Ͻ�
FROM ����
WHERE ���� >= 8000;

SELECT ����ID,�̸�,����,�Ի��Ͻ�
FROM ����
WHERE ���� > 9000;

SELECT *
FROM ����
WHERE �̸� = '������';

SELECT *
FROM ��������ó
WHERE ����ó = '010-1231-1234';

SELECT �μ���
FROM �μ�
WHERE �ٹ��� = '����';

SELECT �ּ�
FROM �����ּ�
WHERE ����ID = 'A0007';

SELECT ����ó
FROM ��������ó
WHERE ����ID = 'A0001' AND �����ڵ� = '����ȭ';

SELECT *
FROM ����
WHERE �μ�ID = 'D003' AND ���� = '��' AND ���� >= 30;

SELECT *
FROM ����
WHERE ����ID = 'A0001' OR ����ID = 'A0005' OR ����ID = 'A0007';

SELECT *
FROM ����
WHERE �μ�ID = 'D001' OR �μ�ID = 'D002' AND �̸� = '��ö��' ;

SELECT *
FROM ����
WHERE ����ID IN ('A0001', 'A0003', 'A0006') AND ���� = '��';

SELECT *
FROM ����
WHERE ���� BETWEEN 2800 AND 3400;

SELECT *
FROM ����
WHERE ����ID BETWEEN 'A0001' AND 'A0004';

SELECT *
FROM ����
WHERE �̸� LIKE '��%';

SELECT *
FROM ����
WHERE �̸� LIKE '%��%' ;

SELECT *
FROM �μ�
WHERE �μ��� LIKE '__��';

SELECT ����ID, �̸�, ����
FROM ����
WHERE �̸� LIKE '%ö%';

SELECT ����ID, ����, �Ի��Ͻ�
FROM ����
WHERE ���� BETWEEN 7000 AND 9000;

SELECT *
FROM �����ּ�
WHERE �ּ� LIKE '����%';

SELECT ����ID, �Ի��Ͻ�
FROM ����
WHERE �Ի��Ͻ� LIKE '___07%';

SELECT *
FROM ���� A, �μ� B;

SELECT *
FROM ���� A, �μ� B
WHERE A.�μ�ID = B.�μ�ID ;

SELECT *
FROM ���� A, ��������ó B
WHERE a.����id = b.����id;

SELECT  A.����ID, A.�̸�, B.�ּ�
FROM ���� A, �����ּ� B
WHERE a.����ID = b.����ID;


 