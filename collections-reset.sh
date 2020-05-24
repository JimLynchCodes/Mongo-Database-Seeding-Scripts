
mongo <<EOF

use footabase

db.users.drop()

db.foobars.drop()

db.foobars.insertOne({flavor: "chocolate", size: "kingSize"})

db.users.insertOne({name: "bob", foobars:[]})