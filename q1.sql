SQL> connect
Enter user-name: system
Enter password:
Connected.

student(rollno int,name varchar(20),course varchar(20),year int);

Table created.

SQL> alter table student add primary key(rollno);

Table altered.

SQL> insert into student values(1,'Biby','MCA',2022);

1 row created.

SQL> insert into student values(2,'Nandu','MCA',2022);

1 row created.

SQL> truncate table student;

Table truncated.

SQL> select * from student;

no rows selected

SQL> drop table student;

Table dropped.

SQL> commit;

Commit complete.

SQL>