Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\Users\Administrator>mongo
2022-05-17T09:56:35.399+0530 I CONTROL  [main] Hotfix KB2731284 or later update
is not installed, will zero-out data files
MongoDB shell version: 3.2.22
connecting to: test
> use mydb
switched to db mydb
> db
mydb
> show dbs
local  0.000GB
> db.createCollection("my collection")
{ "ok" : 1 }
> show dbs
local  0.000GB
mydb   0.000GB
> show collection
2022-05-17T09:59:44.582+0530 E QUERY    [thread1] Error: don't know how to show
[collection] :
shellHelper.show@src/mongo/shell/utils.js:885:11
shellHelper@src/mongo/shell/utils.js:671:15
@(shellhelp2):1:1

>    show collections
my collection
>
> db.mycollection.insert({"name":"doc1"})
WriteResult({ "nInserted" : 1 })
> show collections
my collection
mycollection

> db.mycollection.drop();
true
> db.coll1.insert({"name":"doc"})
WriteResult({ "nInserted" : 1 })
> show collections
coll1
my collection

> db.dropDatabase()
{ "dropped" : "mydb", "ok" : 1 }
>
Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

///CRUD////


> use mydb
switched to db mydb
> db.student.insert({"studid":"101","studname":"Alen"}
... {"studid":"102","studname":"Biby"})
2022-05-17T10:48:19.096+0530 E QUERY    [thread1] SyntaxError: missing ) after a
rgument list @(shell):2:0

> db.student.insert([{"studid":"101","studname":"Alen"}, {"studid":"102","studna
me":"Biby"}])
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
> db.student.find()
{ "_id" : ObjectId("6283308a3a58a1538d7dc516"), "studid" : "101", "studname" : "
Alen" }
{ "_id" : ObjectId("6283308a3a58a1538d7dc517"), "studid" : "102", "studname" : "
Biby" }
> db.student.find(.pretty)
2022-05-17T10:51:56.565+0530 E QUERY    [thread1] SyntaxError: expected expressi
on, got '.' @(shell):1:16

> db.student.find.(pretty)
2022-05-17T10:52:11.468+0530 E QUERY    [thread1] SyntaxError: missing name afte
r . operator @(shell):1:16

> db.student.find().pretty()
{
        "_id" : ObjectId("6283308a3a58a1538d7dc516"),
        "studid" : "101",
        "studname" : "Alen"
}
{
        "_id" : ObjectId("6283308a3a58a1538d7dc517"),
        "studid" : "102",
        "studname" : "Biby"
}
> db.student.insert([{"studuid":"103","studname":"Fasil"},{"studid":"104","studn
ame":"Eldhose"}])
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
> db.student.find().pretty()
{
        "_id" : ObjectId("6283308a3a58a1538d7dc516"),
        "studid" : "101",
        "studname" : "Alen"
}
{
        "_id" : ObjectId("6283308a3a58a1538d7dc517"),
        "studid" : "102",
        "studname" : "Biby"
}
{
        "_id" : ObjectId("628332353a58a1538d7dc518"),
        "studuid" : "103",
        "studname" : "Fasil"
}
{
        "_id" : ObjectId("628332353a58a1538d7dc519"),
        "studid" : "104",
        "studname" : "Eldhose"
}
> db.student.update({"studname":"Eldhose
2022-05-17T11:00:34.273+0530 E QUERY    [thread1] SyntaxError: unterminated stri
ng literal @(shell):1:30

> db.student.update({"studname":"Eldhose"},{"studname":"Harsha"})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.student.find().pretty()
{
        "_id" : ObjectId("6283308a3a58a1538d7dc516"),
        "studid" : "101",
        "studname" : "Alen"
}
{
        "_id" : ObjectId("6283308a3a58a1538d7dc517"),
        "studid" : "102",
        "studname" : "Biby"
}
{
        "_id" : ObjectId("628332353a58a1538d7dc518"),
        "studuid" : "103",
        "studname" : "Fasil"
}
