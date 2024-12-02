DROP TABLE DEPT0000 CASCADE CONSTRAINTS;
DROP TABLE EMP0000 CASCADE CONSTRAINTS;

CREATE TABLE DEPT0000 (
	DEPTNO NUMBER(2) PRIMARY KEY,
	DNAME VARCHAR2(14),
	LOC VARCHAR2(13),
	MANAGER NUMBER(4)  -- 부서 관리자 사원번호
);

CREATE TABLE EMP0000 (
	EMPNO NUMBER(4) PRIMARY KEY,
	ENAME VARCHAR2(10),
	JOB VARCHAR2(20),
	HIREDATE DATE,
	SAL NUMBER(7,2),
	COMM NUMBER(7,2),
	DEPTNO NUMBER(2) REFERENCES DEPT0000(DEPTNO)
);

INSERT INTO DEPT0000 VALUES
	(10,'ACCOUNTING','NEW YORK', 7839);
INSERT INTO DEPT0000 VALUES 
	(20,'RESEARCH','DALLAS', 7566);
INSERT INTO DEPT0000 VALUES
	(30,'SALES','CHICAGO', 7698);
	
INSERT INTO EMP0000 VALUES
	(7369,'SMITH','CLERK',to_date('17-12-1980','dd-mm-yyyy'),800,NULL,20);
INSERT INTO EMP0000 VALUES
	(7499,'ALLEN','SALESMAN',to_date('20-2-1981','dd-mm-yyyy'),1600,300,30);
INSERT INTO EMP0000 VALUES
	(7521,'WARD','SALESMAN',to_date('22-2-1981','dd-mm-yyyy'),1250,500,30);
INSERT INTO EMP0000 VALUES
	(7566,'JONES(M)','ANALYST',to_date('2-4-1981','dd-mm-yyyy'),2975,NULL,20);
INSERT INTO EMP0000 VALUES
	(7654,'MARTIN','SALESMAN',to_date('28-9-1981','dd-mm-yyyy'),1250,1400,30);
INSERT INTO EMP0000 VALUES
	(7698,'BLAKE(M)','CLERK',to_date('1-5-1981','dd-mm-yyyy'),2850,NULL,30);
INSERT INTO EMP0000 VALUES
	(7782,'CLARK','CONSULTANT',to_date('9-6-1981','dd-mm-yyyy'),2450,NULL,10);
INSERT INTO EMP0000 VALUES
	(7788,'SCOTT','ANALYST',to_date('13-7-1981', 'dd-mm-yyyy'),3000, NULL,20);
INSERT INTO EMP0000 VALUES
	(7839,'KING(M)','CONSULTANT',to_date('17-11-1981','dd-mm-yyyy'),5000,NULL,10);
INSERT INTO EMP0000 VALUES
	(7844,'TURNER','SALESMAN',to_date('8-9-1981','dd-mm-yyyy'),1500,0,30);
INSERT INTO EMP0000 VALUES
	(7876,'ADAMS','RESEARCHER',to_date('13-9-1981', 'dd-mm-yyyy'), 1100,NULL,20);
INSERT INTO EMP0000 VALUES
	(7900,'JAMES','CLERK',to_date('3-12-1981','dd-mm-yyyy'),950,NULL,30);
INSERT INTO EMP0000 VALUES
	(7902,'FORD','ANALYST',to_date('3-12-1981','dd-mm-yyyy'),3000,NULL,20);
INSERT INTO EMP0000 VALUES
	(7934,'MILLER','CLERK',to_date('23-1-1982','dd-mm-yyyy'),1300,NULL,10);

ALTER TABLE DEPT0000 ADD CONSTRAINT FK_DEPT0000 
	FOREIGN KEY(MANAGER) REFERENCES EMP0000(EMPNO);

COMMIT;