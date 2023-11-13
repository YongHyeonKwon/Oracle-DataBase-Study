SELECT *
FROM ���� ; 

UPDATE ���� SET �μ�ID = NULL
WHERE ����ID = 'A0005' ;

SELECT *
FROM ���� A, �μ� B
WHERE A.�μ�ID(+) = B.�μ�ID ;

SELECT A.����ID AS ����_����ID, A.����, A.����, B.����ID AS �ּ�_����ID, B.�����ڵ�, B.�ּ� 
FROM ���� A, �����ּ� B
WHERE A.����ID = B.����ID
AND A.����ID =  'A0007';

SELECT A.����ID AS ����_����ID, A.�̸�, A.����, B.����ID AS �ּ�_����ID, B.�����ڵ�, B.�ּ�
FROM ���� A, �����ּ� B 
WHERE A.����ID = B.����ID(+);

SELECT A.����ID AS ����_����ID, A.�̸�, A.����, 
B.����ID AS �ּ�_����ID, B.�����ڵ�, B.�ּ�
FROM ���� A, �����ּ� B 
WHERE A.����ID = B.����ID(+)
AND B.�ּ� IS NULL ;

SELECT A.����ID, A.�̸�, A.����, C.����ó, B.�ּ�
FROM ���� A, �����ּ� B, ��������ó C
WHERE A.����ID = B.����ID AND A.����ID = C.����ID;

SELECT A.����ID, A.�̸�, A.�Ի��Ͻ�, B.����ó
FROM ���� A, ��������ó B
WHERE A.����ID = B.����ID
AND A.����ID IN ('A0001', 'A0002', 'A0003')
AND B.�����ڵ� = '�޴���' ;

SELECT A.����ID, A.�̸�, B.�μ�ID, B.�μ���
FROM ���� A, �μ� B
WHERE A.�μ�ID = B.�μ�ID;

SELECT A.����ID, A.�̸�, B.�ּ�
FROM ���� A LEFT OUTER JOIN �����ּ� B
ON (A.����ID = B.����ID(+))
WHERE A.����ID BETWEEN 'A0005' AND 'A0008' ; 

SELECT A.����ID, A.�̸�, B.�ּ�
FROM ���� A FULL OUTER JOIN �μ� B
ON (A.�μ�ID = B.�μ�ID);

SELECT A.����ID, A.�̸�, B.�ּ�
FROM ���� A LEFT OUTER JOIN �����ּ� B
ON (A.����ID = B.����ID)
WHERE A.����ID IN ('A0005' , 'A0008');

SELECT B.����ID, B.�̸�, A.�ּ�
FROM �����ּ� A RIGHT OUTER JOIN ���� B
ON (A.����ID = B.����ID);

SELECT A.����ID, A.�̸�, A.����, B.����ó
FROM ���� A INNER JOIN ��������ó B
ON (A.����ID = B.����ID) ;

DROP TABLE ���������� CASCADE CONSTRAINTS; 
DROP TABLE ����ǥ CASCADE CONSTRAINTS; 

CREATE TABLE ���������� (
�л�ID VARCHAR2(9) PRIMARY KEY , 
�л��̸� VARCHAR2(50) NOT NULL , 
�Ҽӹ� VARCHAR2(5) 
); 

CREATE TABLE ����ǥ ( 
    �л�ID VARCHAR2(9) , 
    ����   VARCHAR2(30) , 
    ����   NUMBER  , 
    CONSTRAINT PK_����ǥ PRIMARY KEY(�л�ID , ����) , 
    CONSTRAINT FK_����ǥ_REF_������ FOREIGN KEY(�л�ID) REFERENCES ����������(�л�ID) 
)  ; 

INSERT INTO ���������� VALUES ('S0001' , '����ö' , 'A') ; 
INSERT INTO ���������� VALUES ('S0002' , '������' , 'A') ; 
INSERT INTO ���������� VALUES ('S0003' , '����ġ' , 'B') ; 
INSERT INTO ���������� VALUES ('S0004' , '�ڳ���' , 'B') ; 
INSERT INTO ���������� VALUES ('S0005' , '���°�' , 'B') ; 
INSERT INTO ���������� VALUES ('S0006' , '�����' , 'C') ; 
INSERT INTO ���������� VALUES ('S0007' , '�ڶ��' , 'C') ; 
INSERT INTO ���������� VALUES ('S0008' , '���ȵ�' , 'C') ; 
INSERT INTO ���������� VALUES ('S0009' , '������' , 'C') ; 

INSERT INTO ����ǥ VALUES('S0001'  ,'����' , 90); 
INSERT INTO ����ǥ VALUES('S0001'  ,'����' , 85); 
INSERT INTO ����ǥ VALUES('S0001'  ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0002'  ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0002'  ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0002'  ,'����' , 20); 
INSERT INTO ����ǥ VALUES('S0003'  ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0003'  ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0003'  ,'����' , 20); 
INSERT INTO ����ǥ VALUES('S0004'  ,'����' , 85); 
INSERT INTO ����ǥ VALUES('S0004'  ,'����' , 40); 
INSERT INTO ����ǥ VALUES('S0004'  ,'����' , 60); 
INSERT INTO ����ǥ VALUES('S0005'  ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0005'  ,'����' , 100); 
INSERT INTO ����ǥ VALUES('S0005'  ,'����' , 100); 
INSERT INTO ����ǥ VALUES ( 'S0006' , '����' , NULL ) ; 
INSERT INTO ����ǥ VALUES ( 'S0006' , '����' , NULL ) ; 
INSERT INTO ����ǥ VALUES ( 'S0006' , '����' , NULL ) ; 

COMMIT; 

SELECT *
FROM ����������;

SELECT *
FROM ����ǥ;


SELECT �Ҽӹ�, COUNT(�л��̸�)
FROM ����������
GROUP BY �Ҽӹ� ;
