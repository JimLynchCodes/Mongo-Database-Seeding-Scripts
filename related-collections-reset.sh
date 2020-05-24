
mongo <<EOF

use footabase

db.foobars.drop()

db.users.drop()

var new_foobar_id = new ObjectId()

db.foobars.insertOne({id: new_foobar_id, flavor: "chocolate"})

db.users.insertOne({foobars: [new_foobar_id]})

