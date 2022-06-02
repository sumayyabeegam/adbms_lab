Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\Users\Administrator>mongos
BadValue: error: no args for --configdb
try 'mongos --help' for more information

C:\Users\Administrator>mongo
2022-06-02T13:45:02.416+0530 I CONTROL  [main] Hotfix KB2731284 or later update
is not installed, will zero-out data files
MongoDB shell version: 3.2.22
connecting to: test
> use Employee
switched to db Employee
> db.EMPL.finf().pretty()
2022-06-02T13:46:57.725+0530 E QUERY    [thread1] TypeError: db.EMPL.finf is not
 a function :
@(shell):1:1

> 
> db.createUser(
... {
... user:"sumayya",
... pwd:"123",
... roles:[{role:"userAdminAnyDatabase",
... db:"admin"}]})
Successfully added user: {
        "user" : "sumayya",
        "roles" : [
                {
                        "role" : "userAdminAnyDatabase",
                        "db" : "admin"
                }
        ]
}

> db.createUser(
... ... {
... ... user:"sethu",
... ... pwd:"sethu@123",
... ... roles:[{
... ... role:"read",db:"movie",
... ... role:"readWrite",db:"Employee"
... ... }]})
Successfully added user: {
        "user" : "sethu",
        "roles" : [
                {
                        "role" : "readWrite",
                        "db" : "Employee"
                }
        ]
}
> db.createUser(
... {
... user:"aksa",
... pwd:"123",
... roles:[{role:"userAdmin",
... db:"Employee"}]})
Successfully added user: {
        "user" : "aksa",
        "roles" : [
                {
                        "role" : "userAdmin",
                        "db" : "Employee"
                }
        ]
}




