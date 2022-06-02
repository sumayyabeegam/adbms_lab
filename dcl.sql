
SQL*Plus: Release 11.2.0.2.0 Production on Thu Mar 31 14:07:37 2022

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

SQL> connect system
Enter password:
Connected.
SQL> create table table1(rollno int primary key,name varchar(20),age int);

Table created.

SQL> insert into table1 values(1,'Aksa',22);

1 row created.

SQL> insert into table1 values(2,'Biby',21);

1 row created.

SQL> insert into table1 values(3,'Sukrith',22);

1 row created.

SQL> select * from table1;

    ROLLNO NAME                        AGE
---------- -------------------- ----------
         1 Aksa                         22
         2 Biby                         21
         3 Sukrith                      22

SQL> create user sumayya identified by sumu;

User created.

SQL> grant create session to sumayya;

Grant succeeded.

SQL> grant select,insert,update,delete on table1 to sumayya;

Grant succeeded.

SQL> connect sumayya
Enter password:
Connected.
SQL> select * from system.table1;

    ROLLNO NAME                        AGE
---------- -------------------- ----------
         1 Aksa                         22
         2 Biby                         21
         3 Sukrith                      22

SQL> insert into system.table1 values(4,'Fasil',21);

1 row created.

SQL> select * from system.table1;

    ROLLNO NAME                        AGE
---------- -------------------- ----------
         1 Aksa                         22
         2 Biby                         21
         3 Sukrith                      22
         4 Fasil                        21


SQL> connect system
Enter password:
Connected.
SQL> revoke insert on table1 from sumayya;

Revoke succeeded.

SQL> commit;

Commit complete.

SQL>