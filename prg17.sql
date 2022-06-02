Microsoft Windows [Version 6.1.7601]
Copyright (c) 2009 Microsoft Corporation.  All rights reserved.

C:\Users\Administrator>mongo
2022-05-17T11:33:34.094+0530 I CONTROL  [main] Hotfix KB2731284 or later update
is not installed, will zero-out data files
MongoDB shell version: 3.2.22
connecting to: test
> use Employee
switched to db Employee
> db.EMPL.find()
{ "_id" : ObjectId("62833a4b711c33582adb1c0e"), "id" : "101", "name" : "Theresa"
, "salary" : "30000", "role" : "Manager" }
> db.EMPL.insert([{"id":"102","name":"Biby","salary":"30000","role":"Sales"},{"i
d":"103","name":"Tom","salary":"35000","role":"HR"})
... ]
2022-05-17T11:37:32.735+0530 E QUERY    [thread1] SyntaxError: missing ] after e
lement list @(shell):1:129

> db.EMPL.insert([{"id":"102","name":"Biby","salary":"30000","role":"Sales"},{"i
d":"103","name":"Tom","salary":"35000","role":"HR"}])
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
> db.EMPL.insert([{"id":"104","name":"Ben","salary":"30000","role":"Sales"},{"id
":"105","name":"Sukrith","salary":"35000","role":"HR"}])
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
> db.EMPL.insert([{"id":"106","name":"Sethu","salary":"30000","role":"Sales"},{"
id":"107","name":"Jubitha","salary":"25000","role":"Manger"}])
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
> db.EMPL.insert([{"id":"108","name":"Nandhu","salary":"25000","role":"Sales"},{
"id":"109","name":"Joel","salary":"27000","role":"Manger"}])
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
> db.EMPL.insert([{"id":"110","name":"Aksa","salary":"20000","role":"Sales"})
... 0
... )
2022-05-17T11:41:07.813+0530 E QUERY    [thread1] SyntaxError: missing ] after e
lement list @(shell):1:74

> db.EMPL.insert({"id":"110","name":"Aksa","salary":"20000","role":"Sales"})
WriteResult({ "nInserted" : 1 })
> db.EMPL.find().pretty()
{
        "_id" : ObjectId("62833a4b711c33582adb1c0e"),
        "id" : "101",
        "name" : "Theresa",
        "salary" : "30000",
        "role" : "Manager"
}
{
        "_id" : ObjectId("62833bace61dcd413d1acb6e"),
        "id" : "102",
        "name" : "Biby",
        "salary" : "30000",
        "role" : "Sales"
}
{
        "_id" : ObjectId("62833bace61dcd413d1acb6f"),
        "id" : "103",
        "name" : "Tom",
        "salary" : "35000",
        "role" : "HR"
}
{
        "_id" : ObjectId("62833bd8e61dcd413d1acb70"),
        "id" : "104",
        "name" : "Ben",
        "salary" : "30000",
        "role" : "Sales"
}
{
        "_id" : ObjectId("62833bd8e61dcd413d1acb71"),
        "id" : "105",
        "name" : "Sukrith",
        "salary" : "35000",
        "role" : "HR"
}
{
        "_id" : ObjectId("62833c0ae61dcd413d1acb72"),
        "id" : "106",
        "name" : "Sethu",
        "salary" : "30000",
        "role" : "Sales"
}
{
        "_id" : ObjectId("62833c0ae61dcd413d1acb73"),
        "id" : "107",
        "name" : "Jubitha",
        "salary" : "25000",
        "role" : "Manger"
}
{
        "_id" : ObjectId("62833c4ae61dcd413d1acb74"),
        "id" : "108",
        "name" : "Nandhu",
        "salary" : "25000",
        "role" : "Sales"
}
{
        "_id" : ObjectId("62833c4ae61dcd413d1acb75"),
        "id" : "109",
        "name" : "Joel",
        "salary" : "27000",
        "role" : "Manger"
}
{
        "_id" : ObjectId("62833c85e61dcd413d1acb76"),
        "id" : "110",
        "name" : "Aksa",
        "salary" : "20000",
        "role" : "Sales"
}
>