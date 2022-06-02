
SQL*Plus: Release 11.2.0.2.0 Production on Thu Apr 21 14:57:00 2022

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

SQL> connect system
Enter password:
Connected.

SQL> create table sailors(sid int,sname varchar(20),rating int,age real,primary key(sid));

Table created.

SQL> insert into sailors values(22,'Dustin',7,45);

1 row created.

SQL> insert into sailors values(29,'Brutus',1,33);

1 row created.

SQL> insert into sailors values(31,'Lubber',8,55);

1 row created.

SQL> insert into sailors values(32,'Andy',8,25);

1 row created.

SQL> insert into sailors values(58,'Rusty',10,35);

1 row created.

SQL> insert into sailors values(64,'Horatio',7,35);

1 row created.

SQL> insert into sailors values(71,'Zorba',10,16);

1 row created.

SQL> insert into sailors values(74,'Horatio',9,35);

1 row created.

SQL> insert into sailors values(85,'Art',3,25);

1 row created.

SQL> insert into sailors values(95,'Bob',3,63.5);

1 row created.

SQL> select * from sailors
  2  ;

       SID SNAME                    RATING        AGE
---------- -------------------- ---------- ----------
        22 Dustin                        7         45
        29 Brutus                        1         33
        31 Lubber                        8         55
        32 Andy                          8         25
        58 Rusty                        10         35
        64 Horatio                       7         35
        71 Zorba                        10         16
        74 Horatio                       9         35
        85 Art                           3         25
        95 Bob                           3       63.5

10 rows selected.

SQL> create table boats(bid int,bname varchar(20),color varchar(20));

Table created.

SQL> insert into boats values(101,'Interlake','blue');

1 row created.

SQL> insert into boats values(102,'Interlake','red');

1 row created.

SQL> alter table boats add primary key(bid);

Table altered.

SQL> insert into boats values(103,'Clipper','green');

1 row created.

SQL> insert into boats values(104,'Marine','red');

1 row created.

SQL> select * from boats;

       BID BNAME                COLOR
---------- -------------------- --------------------
       101 Interlake            blue
       102 Interlake            red
       103 Clipper              green
       104 Marine               red


SQL> create table  reserves(sid int,bid int,day date,foreign key(sid) references sailors(sid),foreign key(bid) references boats(bid));

Table created.

SQL> commit;

Commit complete.

SQL>

SQL*Plus: Release 11.2.0.2.0 Production on Tue Apr 26 14:10:30 2022

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

SQL> connect system
Enter password:
Connected.
SQL> insert into reserves values(22,101,10-oct-98);
insert into reserves values(22,101,10-oct-98)
                                      *
ERROR at line 1:
ORA-00984: column not allowed here


SQL> insert into reserves values(22,101,'10-oct-98');

1 row created.

SQL> select * from reserves;

       SID        BID DAY
---------- ---------- ---------
        22        101 10-OCT-98

SQL> insert into reserves values(22,102,'10-oct-98');

1 row created.

SQL> insert into reserves values(22,103,'10-aug-98');

1 row created.

SQL> insert into reserves values(22,104,'10-jul-98');

1 row created.

SQL> insert into reserves values(22,102,'11-oct-98');

1 row created.

SQL> delete from reserves where day='11-oct-98';

1 row deleted.

SQL> insert into reserves values(31,102,'11-oct-98');

1 row created.

SQL> insert into reserves values(31,103,'11-jun-98');

1 row created.

SQL> insert into reserves values(31,104,'11-dec-98');

1 row created.

SQL> insert into reserves values(64,101,'9-may-98');

1 row created.

SQL> insert into reserves values(64,102,'9-aug-98');

1 row created.

SQL> insert into reserves values(74,103,'9-aug-98');

1 row created.

SQL> select * from reserves;

       SID        BID DAY
---------- ---------- ---------
        22        101 10-OCT-98
        22        102 10-OCT-98
        22        103 10-AUG-98
        22        104 10-JUL-98
        31        102 11-OCT-98
        31        103 11-JUN-98
        31        104 11-DEC-98
        64        101 09-MAY-98
        64        102 09-AUG-98
        74        103 09-AUG-98

10 rows selected.

SQL> select distinct(name) from sailors;
select distinct(name) from sailors
                *
ERROR at line 1:
ORA-00904: "NAME": invalid identifier


SQL> select distinct(sname) from sailors;

SNAME
--------------------
Rusty
Lubber
Brutus
Andy
Art
Bob
Dustin
Zorba
Horatio

9 rows selected.

SQL> select *from sailors;

       SID SNAME                    RATING        AGE
---------- -------------------- ---------- ----------
        22 Dustin                        7         45
        29 Brutus                        1         33
        31 Lubber                        8         55
        32 Andy                          8         25
        58 Rusty                        10         35
        64 Horatio                       7         35
        71 Zorba                        10         16
        74 Horatio                       9         35
        85 Art                           3         25
        95 Bob                           3       63.5

10 rows selected.

SQL> select * from sailors where sid in(select sid  from reserves where bid=101);

       SID SNAME                    RATING        AGE
---------- -------------------- ---------- ----------
        22 Dustin                        7         45
        64 Horatio                       7         35

SQL> select sname from sailors where sid in(select sid from reserves);

SNAME
--------------------
Dustin
Lubber
Horatio
Horatio

SQL> select sname,age from sailors where sid in(select sid from reserves where bid in(select bid from boats where color='red'))order by age;

SNAME                       AGE
-------------------- ----------
Horatio                      35
Dustin                       45
Lubber                       55

SQL> select distinct s.sid,s.sname from sailors s,reserves r1,reserves r2
  2  where s.sid=r1.sid and s.sid=r2.sid;

       SID SNAME
---------- --------------------
        22 Dustin
        31 Lubber
        74 Horatio
        64 Horatio

SQL> commit;

Commit complete.

SQL> select distinct s.sid,s.sname from sailors s,reserves r1,reserves r2
  2  where s.sid=r1.sid and s.sid=r2.sid
  3  and r1.day=r2.day and r1.bid<>r2.bid;

       SID SNAME
---------- --------------------
        22 Dustin

SQL> commit;

Commit complete.

SQL>