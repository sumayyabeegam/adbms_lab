SQL> connect system
Enter password:
Connected.

SQL> create table employ(empid int,empname varchar(20),dept varchar(20),salary int,deptid int);

Table created.

SQL> create table dept(deptid int,dname varchar(20),hod varchar(20));

Table created.

SQL> alter table employ add primary key(empid);

Table altered.

SQL> alter table dept add primary key(deptid);

Table altered.

SQL> alter table employ add foreign key(deptid) references dept(deptid);

Table altered.

SQL> insert into dept values(1,'sales','Akash');

1 row created.

SQL> insert into dept values(2,'production','Anoop');

1 row created.

SQL> select * from dept;

    DEPTID DNAME                HOD
---------- -------------------- --------------------
         1 sales                Akash
         2 production           Anoop

SQL> insert into employ values(1,'Sethu','sales',25000,1);

1 row created.

SQL> insert into employ values(2,'Sukrith','sales',25000,1);

1 row created.

SQL> insert into employ values(3,'Fasil','production',20000,2);

1 row created.

SQL> select * from employ;

     EMPID EMPNAME              DEPT                     SALARY     DEPTID
---------- -------------------- -------------------- ---------- ----------
         1 Sethu                sales                     25000          1
         2 Sukrith              sales                     25000          1
         3 Fasil                production                20000          2
SQL> update employ set salary=23000 where empid=3;

1 row updated.

SQL> delete from employ where empid=2;

1 row deleted.

SQL> select *from employ;

     EMPID EMPNAME              DEPT                     SALARY     DEPTID
---------- -------------------- -------------------- ---------- ----------
         1 Sethu                sales                     25000          1
         3 Fasil                production                23000          2

SQL> commit;

Commit complete.

SQL>