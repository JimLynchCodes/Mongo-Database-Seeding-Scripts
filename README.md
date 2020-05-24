# Mongo Database Seeding Scripts

Some different scripts for seeding the database

## Fake Scenario

Suppose you have a database named `footabase`.

Inside of the database you have two collections: `foobars` and `users`.

A _foobar_ has this shape:

```
{
   "flavor": string,
   "size": "string
}
```

A _user_ has this shape (where "foobars" is an array containing the _id values of the foobar documents owned by that user):

```
{
  "name": string
  foobars: ObjectId[]
}
```

The goal is to create a script that resets the database to a consistent, predictable state with these collection containing the same data every time.


## Solution Scripts

This repo contains a few different scripts that accomplish this goal is different ways. Different scripts may be better for different situations.

_Note: to run these scripts you will probably first need to explicitly give your current shell user permissions to execute them:_
```
chmod +x <file>
```

`database-reset.sh` - bash script that drops the database, creates it again, re-creates the collections, and fills  the collections with data.

`collections-reset.sh` - bash script that drops specific collections, recreates them, and fills them with data.

`collections-reset.sh` - bash script that drops and recreates specific collections and then fills them with the data that is pulled from `fake-users.json` and `fake-foobars.json`.

`collections-reset.sh` - bash script that drops and recreates specific collections and then fills them with the data that is pulled from `fake-users.json` and `fake-foobars.json`.

`related-collections-reset.sh` - uses the mongo shell to create a new ObjectId, using that as the _id for the new foobar and assicating that id into the newly created user's foobars array.




## Mongo Shell

Remember, you can enter into the mongo shell and play around with the commands with `mongo` (defaults to the locally running db).
```
mongo
```

You can show all databases with this command:
```
show dbs
```

Once using a database, to show collections:
```
show collections
```

show the name of the current database:
```
db
```




