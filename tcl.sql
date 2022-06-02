SQL> connect system
Enter password:
Connected.
SQL> select * from employ;

     EMPID EMPNAME              DEPT                     SALARY     DEPTID
---------- -------------------- -------------------- ---------- ----------
         1 Sethu                sales                     25000          1
         3 Fasil                production                23000          2

SQL> delete from employ where empid=1;

1 row deleted.

SQL> Rollback;

Rollback complete.

SQL> select * from employ;

     EMPID EMPNAME              DEPT                     SALARY     DEPTID
---------- -------------------- -------------------- ---------- ----------
         1 Sethu                sales                     25000          1
         3 Fasil                production                23000          2

SQL> delete from employ where empid=1;

1 row deleted.

SQL> select * from employ;

     EMPID EMPNAME              DEPT                     SALARY     DEPTID
---------- -------------------- -------------------- ---------- ----------
         3 Fasil                production                23000          2

SQL> Rollback;

Rollback complete.

SQL> select * from employ;

     EMPID EMPNAME              DEPT                     SALARY     DEPTID
---------- -------------------- -------------------- ---------- ----------
         1 Sethu                sales                     25000          1
         3 Fasil                production                23000          2

SQL> savepoint sp1;

Savepoint created.

SQL> delete from employ where empid=1;

1 row deleted.

SQL> rollback to sp1;

Rollback complete.

SQL> select * from employ;

     EMPID EMPNAME              DEPT                     SALARY     DEPTID
---------- -------------------- -------------------- ---------- ----------
         1 Sethu                sales                     25000          1
         3 Fasil                production                23000          2

SQL> commmit;

SQL> commit;

Commit complete.

SQL>