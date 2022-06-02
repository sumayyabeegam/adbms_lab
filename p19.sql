
> db.empl.insert({"id":"110","name":"ST","salary":"35000","role":"Manager"})
WriteResult({ "nInserted" : 1 })
> db.empl.find().pretty()
{
        "_id" : ObjectId("6295a2f70e778b8ea5d2bee8"),
        "id" : "110",
        "name" : "ST",
        "salary" : "35000",
        "role" : "Manager"
}
> db.empl.insert({"id":"111","name":"Karthik","salary":"30000","role":"Sales"})
WriteResult({ "nInserted" : 1 })
> db.empl.insert({"id":"112","name":"Fasil","salary":"30000","role":"Sales"})
WriteResult({ "nInserted" : 1 })
> db.empl.insert({"id":"113","name":"Sethu","salary":"35000","role":"HR"})
WriteResult({ "nInserted" : 1 })
> db.empl.insert({"id":"114","name":"Harsha","salary":"30000","role":"Sales"})
WriteResult({ "nInserted" : 1 })
> db.empl.find().pretty()
{
        "_id" : ObjectId("6295a2f70e778b8ea5d2bee8"),
        "id" : "110",
        "name" : "ST",
        "salary" : "35000",
        "role" : "Manager"
}
{
        "_id" : ObjectId("6295a3610e778b8ea5d2bee9"),
        "id" : "111",
        "name" : "Karthik",
        "salary" : "30000",
        "role" : "Sales"
}
{
        "_id" : ObjectId("6295a3790e778b8ea5d2beea"),
        "id" : "112",
        "name" : "Fasil",
        "salary" : "30000",
        "role" : "Sales"
}
{
        "_id" : ObjectId("6295a3940e778b8ea5d2beeb"),
        "id" : "113",
        "name" : "Sethu",
        "salary" : "35000",
        "role" : "HR"
}
{
        "_id" : ObjectId("6295a3f40e778b8ea5d2beec"),
        "id" : "114",
        "name" : "Harsha",
        "salary" : "30000",
        "role" : "Sales"
}

true
> db.empl.insert({"id":110,"name":"ST","salary":25000,"role":"Sales"})
WriteResult({ "nInserted" : 1 })
> db.empl.insert({"id":111,"name":"fasil","salary":30000,"role":"Maanger"})
WriteResult({ "nInserted" : 1 })
> db.empl.insert({"id":112,"name":"harsha","salary":30000,"role":"Maanger"})
WriteResult({ "nInserted" : 1 })
> db.empl.insert({"id":113,"name":"karthik","salary":30000,"role":"Maanger"})
WriteResult({ "nInserted" : 1 })
> db.empl.insert({"id":113,"name":"Sethu","salary":30000,"role":"Maanger"})
WriteResult({ "nInserted" : 1 })
> db.empl.find().pretty()
{
        "_id" : ObjectId("6295a9880e778b8ea5d2beef"),
        "id" : 110,
        "name" : "ST",
        "salary" : 25000,
        "role" : "Sales"
}
{
        "_id" : ObjectId("6295a9b30e778b8ea5d2bef0"),
        "id" : 111,
        "name" : "fasil",
        "salary" : 30000,
        "role" : "Maanger"
}
{
        "_id" : ObjectId("6295a9c30e778b8ea5d2bef1"),
        "id" : 112,
        "name" : "harsha",
        "salary" : 30000,
        "role" : "Maanger"
}
{
        "_id" : ObjectId("6295a9d10e778b8ea5d2bef2"),
        "id" : 113,
        "name" : "karthik",
        "salary" : 30000,
        "role" : "Maanger"
}
{
        "_id" : ObjectId("6295a9dc0e778b8ea5d2bef3"),
        "id" : 113,
        "name" : "Sethu",
        "salary" : 30000,
        "role" : "Maanger"
}
> db.empl.update({name:"ST"},{$inc:{salary:8000}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.empl.find().pretty()
{
        "_id" : ObjectId("6295a9880e778b8ea5d2beef"),
        "id" : 110,
        "name" : "ST",
        "salary" : 33000,
        "role" : "Sales"
}
{
        "_id" : ObjectId("6295a9b30e778b8ea5d2bef0"),
        "id" : 111,
        "name" : "fasil",
        "salary" : 30000,
        "role" : "Maanger"
}
{
        "_id" : ObjectId("6295a9c30e778b8ea5d2bef1"),
        "id" : 112,
        "name" : "harsha",
        "salary" : 30000,
        "role" : "Maanger"
}
{
        "_id" : ObjectId("6295a9d10e778b8ea5d2bef2"),
        "id" : 113,
        "name" : "karthik",
        "salary" : 30000,
        "role" : "Maanger"
}
{
        "_id" : ObjectId("6295a9dc0e778b8ea5d2bef3"),
        "id" : 113,
        "name" : "Sethu",
        "salary" : 30000,
        "role" : "Maanger"
}
> db.empl.updateMany({},{$inc:{salary:4000}})
{ "acknowledged" : true, "matchedCount" : 5, "modifiedCount" : 5 }
> db.empl.find().pretty()
{
        "_id" : ObjectId("6295a9880e778b8ea5d2beef"),
        "id" : 110,
        "name" : "ST",
        "salary" : 37000,
        "role" : "Sales"
}
{
        "_id" : ObjectId("6295a9b30e778b8ea5d2bef0"),
        "id" : 111,
        "name" : "fasil",
        "salary" : 34000,
        "role" : "Maanger"
}
{
        "_id" : ObjectId("6295a9c30e778b8ea5d2bef1"),
        "id" : 112,
        "name" : "harsha",
        "salary" : 34000,
        "role" : "Maanger"
}
{
        "_id" : ObjectId("6295a9d10e778b8ea5d2bef2"),
        "id" : 113,
        "name" : "karthik",
        "salary" : 34000,
        "role" : "Maanger"
}
{
        "_id" : ObjectId("6295a9dc0e778b8ea5d2bef3"),
        "id" : 113,
        "name" : "Sethu",
        "salary" : 34000,
        "role" : "Maanger"
}
> db.empl.update({name:"ST"},($set:{remark:"WC"}})
2022-05-31T11:13:51.214+0530 E QUERY    [thread1] SyntaxError: missing ) in pare
nthetical @(shell):1:32

> db.empl.update({name:"ST"},{$set:{remark:"WC"}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.empl.find().pretty()
{
        "_id" : ObjectId("6295a9880e778b8ea5d2beef"),
        "id" : 110,
        "name" : "ST",
        "salary" : 37000,
        "role" : "Sales",
        "remark" : "WC"
}
{
        "_id" : ObjectId("6295a9b30e778b8ea5d2bef0"),
        "id" : 111,
        "name" : "fasil",
        "salary" : 34000,
        "role" : "Maanger"
}
{
        "_id" : ObjectId("6295a9c30e778b8ea5d2bef1"),
        "id" : 112,
        "name" : "harsha",
        "salary" : 34000,
        "role" : "Maanger"
}
{
        "_id" : ObjectId("6295a9d10e778b8ea5d2bef2"),
        "id" : 113,
        "name" : "karthik",
        "salary" : 34000,
        "role" : "Maanger"
}
{
        "_id" : ObjectId("6295a9dc0e778b8ea5d2bef3"),
        "id" : 113,
        "name" : "Sethu",
        "salary" : 34000,
        "role" : "Maanger"
}
>