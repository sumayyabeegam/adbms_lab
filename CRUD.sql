Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\Users\Administrator>mongo
2022-05-17T10:43:32.241+0530 I CONTROL  [main] Hotfix KB2731284 or later update
is not installed, will zero-out data files
MongoDB shell version: 3.2.22
connecting to: test
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
{ "_id" : ObjectId("628332353a58a1538d7dc519"), "studname" : "Harsha" }
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
{ "_id" : ObjectId("628332353a58a1538d7dc519"), "studname" : "Harsha" }
> db.student.findone()
2022-05-17T11:05:51.910+0530 E QUERY    [thread1] TypeError: db.student.findone
is not a function :
@(shell):1:1

> db.student.findOne()
{
        "_id" : ObjectId("6283308a3a58a1538d7dc516"),
        "studid" : "101",
        "studname" : "Alen"
}
> db.student.remove("studid":"104")
2022-05-17T11:14:32.069+0530 E QUERY    [thread1] SyntaxError: missing ) after a
rgument list @(shell):1:26

> db.student.remove({"studid":"104"})
WriteResult({ "nRemoved" : 0 })
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
{ "_id" : ObjectId("628332353a58a1538d7dc519"), "studname" : "Harsha" }
> db.student.remove({"studname":"Harsha"})
WriteResult({ "nRemoved" : 1 })
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
> db.student.remove({"studname":"Fasil"})
WriteResult({ "nRemoved" : 1 })
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
> db.student.find({"studid":"101"})
{ "_id" : ObjectId("6283308a3a58a1538d7dc516"), "studid" : "101", "studname" : "
Alen" }
>