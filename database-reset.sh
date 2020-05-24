
mongo <<EOF

use footabase

db.dropDatabase()

db.foobars.insertOne({flavor: "chocolate", size: "kingSize"})

db.users.insertOne({name: "bob", foobars:[]})

