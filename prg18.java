Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\Users\Administrator>mongo
2022-05-17T11:46:36.580+0530 I CONTROL  [main] Hotfix KB2731284 or later update
is not installed, will zero-out data files
MongoDB shell version: 3.2.22
connecting to: test
> use movie
switched to db movie
> db.MovieDetials.insert({"Title":"jo and jo","Writer":"2022","Actors":"Neslin"}
)
WriteResult({ "nInserted" : 1 })
> db.MovieDetials.insert([{"Title":"janaganamana","Writer":"2022","Actors":"Nesl
in"})
... ]
2022-05-17T11:50:19.051+0530 E QUERY    [thread1] SyntaxError: missing ] after e
lement list @(shell):1:82

> db.MovieDetials.drop()
true
> db.MovieDetials.insert({"Title":"jo and jo","Writer":"Unnikrishnan","Year":"20
22","Actors":"Neslin"})
WriteResult({ "nInserted" : 1 })
> db.MovieDetials.insert([{"Title":"janaganamana","Writer":"Unnikrishnan","Year"
:"2022","Actors":"Prithviraj"},{"Title":"KGF","Writer":"Prasanth Neel","Year":20
22","Actors":"Yash"}])
2022-05-17T11:55:25.381+0530 E QUERY    [thread1] SyntaxError: missing } after p
roperty list @(shell):1:160

> db.MovieDetials.insert([{"Title":"janaganamana","Writer":"Unnikrishnan","Year"
:"2022","Actors":"Prithviraj"},{"Title":"KGF","Writer":"Prasanth Neel","Year":"2
022","Actors":"Yash"}])
BulkWriteResult({
        "writeErrors" : [ ],
        "writeConcernErrors" : [ ],
        "nInserted" : 2,
        "nUpserted" : 0,
        "nMatched" : 0,
        "nModified" : 0,
        "nRemoved" : 0,
        "upserted" : [ ]
})
> db.MovieDetials.insert([{"Title":"Saghav","Writer":"Unnikrishnan","Year":"2017
","Actors":"Nivin Pauly"},{"Title":"RRR","Writer":"Rajamaouli","Year":"2022","Ac
tors":"Ramcharan"}])
BulkWriteResult({
        "writeErrors" : [ ],
        "writeConcernErrors" : [ ],
        "nInserted" : 2,
        "nUpserted" : 0,
        "nMatched" : 0,
        "nModified" : 0,
        "nRemoved" : 0,
        "upserted" : [ ]
})
> db.MovieDetials.insert([{"Title":"Kuruthi","Writer":"Unnikrishnan","Year":"202
1","Actors":"Prithviraj"},{"Title":"KGF1","Writer":"Prashanth Nee","Year":"2022"