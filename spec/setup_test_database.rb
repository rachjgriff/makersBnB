require 'pg'

connection = PG.connect(dbname: 'makers_bnb_test')

connection.exec("TRUNCATE spaces;")
