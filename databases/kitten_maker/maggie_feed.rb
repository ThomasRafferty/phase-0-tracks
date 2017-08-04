#This program hopes to allow users to input when they feed their pet and allows for queries to see if their pet was feed.  Maggie is my dog.  An interaction between the feed database allowing for both input data of being feed and checking if ones pet has been feed that day.
#Not building to adjust for years, assuming one year (2017).  Program could be updated in the future to handle this, or a new iteration could be created in the new year.

require "sqlite3"
require "table_print"

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
# feed_pet(feed_db, "0001-01-02", 3)

#Build a method to see if the current data is in the database
def check_feed (feed_db, check_date)
  feed_db.execute("SELECT * FROM feed_table WHERE feed_date = #{check_date}")
end






#Build method to print feed table
#Both still do not work
show_feed_table = <<-SQL1
  SELECT * FROM feed_table
SQL1

feed_db.execute("SELECT * FROM feed_table")


 #check if pet has been fed






# p feed_tablev

# def month_creator (input_month)
#   month_exists = false
# #  until month_exists = true
#     months.each do |x|
#       if x = input_month
#         month_exists = true
#       else
#         months << input_month
#         month_exists = true
#       end
#  #   end
#   end
# end


#DRIVER CODE#############################
# puts "Please enter the month date."
# current_month = gets.chomp
# month_creator(current_month)
# p months