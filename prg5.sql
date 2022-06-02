
SQL> connect system
Enter password:
Connected.

SQL> create table cust(id int,name varchar(20),age int,hometowm varchar(20),salary float);

Table created.

SQL> insert into cust values(1,'Ramesh',32,'Ahmedabad',2000);

1 row created.

SQL> insert into cust values(2,'Khilan',25,'Delhi',1500);

1 row created.

SQL> insert into cust values(3,'Kaushik',23,'Kota',2000);

1 row created.

SQL> insert into cust values(4,'Chaitali',25,'Mumbai',6500);

1 row created.

SQL> insert into cust values(5,'Hardhik',27,'Bhopal',8500);

1 row created.

SQL> insert into cust values(6,'Komal',22,'MP',4500);

1 row created.

SQL> insert into cust values(7,'Muffy',24,'Indore',10000);

01 row created.

SQL> insert into cust values(8,'Ramu',23,'Delhi',6000);

1 row created.

SQL> insert into cust values(9,'Rohit',24,'Ahmedabad',5000);

1 row created.

SQL> insert into cust values(10,'Shamli',23,'Mumbai',10000);

1 row created.

SQL> select * from cust;

        ID NAME                        AGE HOMETOWM                 SALARY
---------- -------------------- ---------- -------------------- ----------
         1 Ramesh                       32 Ahmedabad                  2000
         2 Khilan                       25 Delhi                      1500
         3 Kaushik                      23 Kota                       2000
         4 Chaitali                     25 Mumbai                     6500
         5 Hardhik                      27 Bhopal                     8500
         6 Komal                        22 MP                         4500
         7 Muffy                        24 Indore                    10000
         8 Ramu                         23 Delhi                      6000
         9 Rohit                        24 Ahmedabad                  5000
        10 Shamli                       23 Mumbai                    10000

10 rows selected.

SQL> select * from cust where id=4;

        ID NAME                        AGE HOMETOWM                 SALARY
---------- -------------------- ---------- -------------------- ----------
         4 Chaitali                     25 Mumbai                     6500


SQL> select distinct hometowm from cust;

HOMETOWM
--------------------
Bhopal
Ahmedabad
Delhi
Kota
Mumbai
MP
Indore

7 rows selected.

SQL> select count(salary) from cust;

COUNT(SALARY)
-------------
           10

SQL> commit;

Commit complete.

SQL>