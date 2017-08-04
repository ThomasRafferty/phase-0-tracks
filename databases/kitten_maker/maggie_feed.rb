#This program hopes to allow users to input when they feed their pet and allows for queries to see if their pet was feed.  Maggie is my dog.  An interaction between the feed database allowing for both input data of being feed and checking if ones pet has been feed that day.
#Not building to adjust for years, assuming one year (2017).  Program could be updated in the future to handle this, or a new iteration could be created in the new year.

require "sqlite3"

feed_db = SQLite3::Database.new("maggie_feed.db")
feed_db.results_as_hash = true

# SQL DATE entry format "YYYY-MM-DD"
create_feed_table = <<-SQL
  CREATE TABLE IF NOT EXISTS feed_table (
  id INTEGER PRIMARY KEY,
  feed_date DATE,
  scoops_feed INT
  )
SQL

feed_db.execute(create_feed_table)
# add a test feeding
#feed_db.execute("INSERT INTO feed_table (feed_date, scoops_feed) VALUES ('0001-01-01',2)")

#This method will input a feeding into a hash to tracking feedings
 def feed_pet (feed_db, feed_date, scoops_feed)
    feed_db.execute("INSERT INTO feed_table (     feed_date, scoops_feed) VALUES (?, ?)", [    feed_date, scoops_feed])
 end
# Test feed_pet method
#feed_pet(feed_db, "0001-01-02", 3)


#Build a method to see if the current data is in the database
dates_feed = feed_db.execute

def check_feed (feed_db, check_date)
  if check_date ==


  feed_db.execute("SELECT * FROM feed_table WHERE feed_date = #{check_date}")
  # p feed_table
end
#Test check_feed method
check_feed(feed_db, "0001-01-03")


#USER INTERFACE#######################
puts "Welcome to the pet fed tracker 3000!"
#Print dates feed
feedings = feed_db.execute("SELECT * FROM feed_table")
feedings.each do |feed|
  puts "On #{feed['feed_date']} your pet was feed #{feed['scoops_feed']} scoops of food."
end