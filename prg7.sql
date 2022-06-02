SQL> connect system
Enter password:
Connected.

SQL> create table student10(studentid int,name varchar(20),Mark int);

Table created.

SQL> insert into student10 values(1,'Sanjay',64);

1 row created.

SQL> insert into student10 values(2,'Varun',72);

1 row created.

SQL> insert into student10 values(3,'Akash',45);

1 row created.

SQL> insert into student10 values(4,'Rohit',86);

1 row created.

SQL> insert into student10 values(5,'Anajli',92);

1 row created.

SQL> insert into student10 values(6,'Ammu',95);

1 row created.

SQL> insert into student10 values(7,'Rahul',80);

1 row created.

SQL> insert into student10 values(8,'Prathiba',62);

1 row created.

SQL> insert into student10 values(9,'Ravi',75);

1 row created.

SQL> insert into student10 values(10,'Pulkit',76);

1 row created.

SQL> select * from student10;

 STUDENTID NAME                       MARK
---------- -------------------- ----------
         1 Sanjay                       64
         2 Varun                        72
         3 Akash                        45
         4 Rohit                        86
         5 Anajli                       92
         6 Ammu                         95
         7 Rahul                        80
         8 Prathiba                     62
         9 Ravi                         75
        10 Pulkit                       76

10 rows selected.

SQL> select count(studentid) where mark>75;
select count(studentid) where mark>75
                        *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected


SQL> select count(studentid) from student10 where mark>75;

COUNT(STUDENTID)
----------------
               5

SQL> select count(studentid) as number of students from student10 where mark>75;
select count(studentid) as number of students from student10 where mark>75
                           *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected


SQL> select count(studentid) as number_of_students from student10 where mark>75;

NUMBER_OF_STUDENTS
------------------
                 5

SQL> select avg(mark) as Average_Mark from student10;

AVERAGE_MARK
------------
        74.7

SQL> select min(mark) as Minimum_Mark from student10;

MINIMUM_MARK
------------
          45

SQL> select max(mark) as Maximum_Mark from student10;

MAXIMUM_MARK
------------
          95

SQL> commit;

Commit complete.

SQL>