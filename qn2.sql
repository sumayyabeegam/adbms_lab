SQL> connect
Enter user-name: system
Enter password:
Connected.
SQL> create table employ(empid int,empname varchar(20),dept varchar(25),primary key(empid));

Table created.

SQL> alter table employ add salary int;

Table altered.

SQL> insert into employ(1,'Sethu','sales',30000);
insert into employ(1,'Sethu','sales',30000)
                   *
ERROR at line 1:
ORA-00928: missing SELECT keyword


SQL> insert into employ values(1,'Sethu','sales',30000);

1 row created.

SQL> create table dept(deptid int,deptname varchar(20),hod varchar(20));

Table created.

SQL> select * from employ;

     EMPID EMPNAME              DEPT                          SALARY
---------- -------------------- ------------------------- ----------
         1 Sethu                sales                          30000

SQL> alter table dept add primary key(deptid);

Table altered.

SQL> alter table employ add deptid int;

Table altered.

SQL> alter table employ add foreign key(deptid) references dept(deptid);

Table altered.

SQL> select * from  employ;

     EMPID EMPNAME              DEPT                          SALARY     DEPTID
---------- -------------------- ------------------------- ---------- ----------
         1 Sethu                sales                          30000

SQL> delete from employ where empid=1;

1 row deleted.

SQL> select * from  employ;

no rows selected

SQL> insert into dept values(1,'sales','John');

1 row created.

SQL> insert into dept values(2,'production','Arjun');

1 row created.

SQL> insert into employ values(1,'Sethu','sales',30000,1);

1 row created.

SQL> insert into employ values(2,'Savy','sales',30000,1);

1 row created.

SQL> select * from employ;

     EMPID EMPNAME              DEPT                          SALARY     DEPTID
---------- -------------------- ------------------------- ---------- ----------
         1 Sethu                sales                          30000          1
         2 Savy                 sales                          30000          1


SQL> insert into employ values(3,'ben','production',30000,2);

1 row created.

SQL> select * from employ;

     EMPID EMPNAME              DEPT                          SALARY     DEPTID
---------- -------------------- ------------------------- ---------- ----------
         1 Sethu                sales                          30000          1
         2 Savy                 sales                          30000          1
         3 ben                  production                     30000          2

SQL> select * from dept;

    DEPTID DEPTNAME             HOD
---------- -------------------- --------------------
         1 sales                John
         2 production           Arjun

SQL>