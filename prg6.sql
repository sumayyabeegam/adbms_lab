SQL> connect system
Enter password:
Connected.

SQL> create table emp1(id int primary key,firstname varchar(20),lastname varchar(20),dept varchar(20),location varchar(20),salary float);

Table created.

SQL> insert into emp1 values(1,'Harshad','Kuwer','Marketing','pune',10000);

1 row created.

SQL> insert into emp1 values(2,'Anurag','Rajput','IT','Mumbai',20000);

1 row created.

SQL> insert into emp1 values(3,'Chaitali','Tarle','IT','Chennai',30000);

1 row created.

SQL> insert into emp1 values(4,'Pranjal','Patil','IT','Chennai',25000);

1 row created.

SQL> insert into emp1 values(5,'Suraj','Tripathi','Marketing','Pune',15000);

1 row created.

SQL> insert into emp1 values(6,'Roshmi','Jadhav','Finance','banglore',20000);

1 row created.

SQL> insert into emp1 values(7,'Sandhya','Jain','Finance','banglore',20000);

1 row created.

SQL> select * from emp1;

        ID FIRSTNAME            LASTNAME             DEPT
---------- -------------------- -------------------- --------------------
LOCATION                 SALARY
-------------------- ----------
         1 Harshad              Kuwer                Marketing
pune                      10000

         2 Anurag               Rajput               IT
Mumbai                    20000

         3 Chaitali             Tarle                IT
Chennai                   30000


        ID FIRSTNAME            LASTNAME             DEPT
---------- -------------------- -------------------- --------------------
LOCATION                 SALARY
-------------------- ----------
         4 Pranjal              Patil                IT
Chennai                   25000

         5 Suraj                Tripathi             Marketing
Pune                      15000

         6 Roshmi               Jadhav               Finance
banglore                  20000


        ID FIRSTNAME            LASTNAME             DEPT
---------- -------------------- -------------------- --------------------
LOCATION                 SALARY
-------------------- ----------
         7 Sandhya              Jain                 Finance
banglore                  20000


7 rows selected.

SQL> select * from emp1 where dept='IT' and location='chennai';

no rows selected

SQL> select * from emp1 where dept='IT' and location='Chennai';

        ID FIRSTNAME            LASTNAME             DEPT
---------- -------------------- -------------------- --------------------
LOCATION                 SALARY
-------------------- ----------
         3 Chaitali             Tarle                IT
Chennai                   30000

         4 Pranjal              Patil                IT
Chennai                   25000


SQL> select * from emp1 where dept='IT' or location='Chennai';

        ID FIRSTNAME            LASTNAME             DEPT
---------- -------------------- -------------------- --------------------
LOCATION                 SALARY
-------------------- ----------
         2 Anurag               Rajput               IT
Mumbai                    20000

         3 Chaitali             Tarle                IT
Chennai                   30000

         4 Pranjal              Patil                IT
Chennai                   25000


SQL> select firstname as emp_fn,location as address from emp1;

EMP_FN               ADDRESS
-------------------- --------------------
Harshad              pune
Anurag               Mumbai
Chaitali             Chennai
Pranjal              Chennai
Suraj                Pune
Roshmi               banglore
Sandhya              banglore

7 rows selected.

SQL> select * from emp1 where firstname like a%;
select * from emp1 where firstname like a%
                                         *
ERROR at line 1:
ORA-00911: invalid character


SQL> select * from emp1 where firstname like 'a%';

no rows selected

SQL> select * from emp1 where firstname like 'a%';

no rows selected

SQL> commit;

Commit complete.

SQL>

SQL*Plus: Release 11.2.0.2.0 Production on Tue Apr 12 10:06:44 2022

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

SQL> connect system
Enter password:
Connected.
SQL> select * from emp1;

        ID FIRSTNAME            LASTNAME             DEPT
---------- -------------------- -------------------- --------------------
LOCATION                 SALARY
-------------------- ----------
         1 Harshad              Kuwer                Marketing
pune                      10000

         2 Anurag               Rajput               IT
Mumbai                    20000

         3 Chaitali             Tarle                IT
Chennai                   30000


        ID FIRSTNAME            LASTNAME             DEPT
---------- -------------------- -------------------- --------------------
LOCATION                 SALARY
-------------------- ----------
         4 Pranjal              Patil                IT
Chennai                   25000

         5 Suraj                Tripathi             Marketing
Pune                      15000

         6 Roshmi               Jadhav               Finance
banglore                  20000


        ID FIRSTNAME            LASTNAME             DEPT
---------- -------------------- -------------------- --------------------
LOCATION                 SALARY
-------------------- ----------
         7 Sandhya              Jain                 Finance
banglore                  20000


7 rows selected.


SQL> select * from emp1 where firstname like 'A%';

        ID FIRSTNAME            LASTNAME             DEPT
---------- -------------------- -------------------- --------------------
LOCATION                 SALARY
-------------------- ----------
         2 Anurag               Rajput               IT
Mumbai                    20000


SQL> select * from emp1 where firstname like 's%';

no rows selected

SQL> select * from emp1 where firstname like 'S%';

        ID FIRSTNAME            LASTNAME             DEPT
---------- -------------------- -------------------- --------------------
LOCATION                 SALARY
-------------------- ----------
         5 Suraj                Tripathi             Marketing
Pune                      15000

         7 Sandhya              Jain                 Finance
banglore                  20000


SQL> select sum(salary) from emp1 group by location;

SUM(SALARY)
-----------
      20000
      10000
      40000
      55000
      15000

SQL> select sum(salary),location from emp1 group by location;

SUM(SALARY) LOCATION
----------- --------------------
      20000 Mumbai
      10000 pune
      40000 banglore
      55000 Chennai
      15000 Pune

SQL> select location from emp1 group by location having sum(salary)>10000;

LOCATION
--------------------
Mumbai
banglore
Chennai
Pune

SQL> select * from emp1 order by firstname;

        ID FIRSTNAME            LASTNAME             DEPT
---------- -------------------- -------------------- --------------------
LOCATION                 SALARY
-------------------- ----------
         2 Anurag               Rajput               IT
Mumbai                    20000

         3 Chaitali             Tarle                IT
Chennai                   30000

         1 Harshad              Kuwer                Marketing
pune                      10000


        ID FIRSTNAME            LASTNAME             DEPT
---------- -------------------- -------------------- --------------------
LOCATION                 SALARY
-------------------- ----------
         4 Pranjal              Patil                IT
Chennai                   25000

         6 Roshmi               Jadhav               Finance
banglore                  20000

         7 Sandhya              Jain                 Finance
banglore                  20000


        ID FIRSTNAME            LASTNAME             DEPT
---------- -------------------- -------------------- --------------------
LOCATION                 SALARY
-------------------- ----------
         5 Suraj                Tripathi             Marketing
Pune                      15000


7 rows selected.

SQL> commit;

Commit complete.

SQL>