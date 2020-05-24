# Mongo Database Seeding Scripts

Some different scripts for seeding the database

## Fake Scenario

Suppose you have a database named `foobase`.

Inside of foobase you have two collections: `foobars` and `users`.

A _foobar_ has this shape:

```
{
   "flavor": string,
   "size": "string
}
```

A _user_ has this shape:

```
{
  "name": string
  foobars: Foobar[]
}
```

The goal is to create a script that resets the database to a consistent, predictable state with these collection containing the same data every time.


## Solution Scripts

This repo contains a few different scripts that accomplish this goal is different ways. Different scripts may be better for different situations.


`database-reset.sh` - bash script that drops the database, creates it again, re-creates the collections, and fills  the collections with data.

`collections-reset.sh` - bash script that drops specific collections, recreates them, and fills them with data.

`collectionts-reset.sh` - bash script that drops and recreates specific collections and then fills them with the data that is pulled from `fake-users.json` and `fake-foobars.json`.









