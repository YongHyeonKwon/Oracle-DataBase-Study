SELECT A. �̸�, A.����, B.�μ����ְ���
FROM ���� A, �μ����ְ���_VIEW B
WHERE A.�μ�ID = B.�μ�ID
AND A.���� = B.�μ����ְ��� ;

DROP VIEW �μ����ְ���_VIEW ;

INSERT INTO ���������� (�л�ID, �л��̸�, �Ҽӹ�)
VALUES ('S0088' , '����' , 'H');

SELECT *
FROM ����������;

INSERT INTO ����ǥ 
(�л�ID, 
����,
����
)
VALUES (
'S0088',
'����',
'100' 
);

SELECT *
FROM ����ǥ;

DELETE FROM ����ǥ
WHERE �л�ID = 'S0088' ;

UPDATE ���������� SET
�л�ID = 'S0010',
�л��̸� = '������',
�Ҽӹ� = 'S'
WHERE �л�ID = 'S0088' ;

INSERT INTO ����
(����ID, �н�����, �̸�, ����, �Ի��Ͻ�, �ֹε�Ϲ�ȣ, ����, �μ�ID)
VALUES('A1000', 'hello1000', '��ĳ��', 29, SYSDATE, 
'950120-1566221', 3500, 'D006');

UPDATE ���� SET
���� = '��', �μ�ID = 'D005', �н����� = 'hello1000!!!'
WHERE ����ID = 'A1000';

DELETE FROM ����
WHERE ����ID = 'A1000' ;

SELECT *
FROM ��������ó ;

INSERT INTO ����
(����ID, �н�����, �̸�, ����, �Ի��Ͻ�, �ֹε�Ϲ�ȣ, ����, �μ�ID)
VALUES('A2000', 'hello222', '��ȫ��', 40, SYSDATE, '830220-1566221', 5600, 'D006');

INSERT INTO ��������ó
(����ID, �����ڵ�, ����ó) VALUES('A2000', '�޴���', '010-5959-1111');

INSERT INTO �����ּ�
(����ID, �����ڵ�, �ּ�) VALUES ('A2000', '��', '��õ�� 123');

DELETE FROM ����ǥ;

INSERT INTO ��������ó
(����ID, �����ڵ�,����ó) VALUES('A2000', '����ȭ', '062-123-1111');

COMMIT;

SELECT * FROM  �����ּ�;

UPDATE ��������ó SET
����ó = '010-3333-5959' 
WHERE ����ID = 'A2000' 
AND �����ڵ� = '�޴���' ;

DELETE FROM �����ּ�
WHERE ����ID IN ('A0011' , 'A0012', 'A0013', 'A2000');

DELETE FROM ��������ó
WHERE ����ID IN ('A0011', 'A0012', 'A0013', 'A2000');

DELETE FROM ����
WHERE ����ID IN ('A0011', 'A0012', 'A0013', 'A2000');

COMMIT;

INSERT INTO ����ǥ 
(�л�ID, ����, ����) VALUES ('S0001', '����', 90);

INSERT INTO ����ǥ 
(�л�ID, ����, ����) VALUES ('S0001', '����', 85);

INSERT INTO ����ǥ 
(�л�ID, ����, ����) VALUES ('S0001', '����', 70);

UPDATE ����ǥ SET
���� = 80 
WHERE �л�ID = 'S0001' AND ���� = '����';

COMMIT; 

SELECT *
FROM ����ǥ;