require "sqlite3"

feed_db = SQLite3::Database.new("maggie_feed.db")
feed_db.results_as_hash = true
# feed_morning = []
# feed_evening = []

# SQL DATE entry format "YYYY-MM-DD"
create_feed_table = <<-SQL
  CREATE TABLE IF NOT EXISTS feed_table (
  id INTEGER PRIMARY KEY,
  food_scoops INT,
  feed_date DATE
  )
SQL

feed_db.execute(create_feed_table)

feed_db.execute("INSERT INTO feed_table (food_scoops, feed_date ) VALUES ('1992-01-12', 2)")

#feed_db.execute("INSERT INTO feed_table (feed_date, feed_status) VALUES ('0001-01-01','true')")