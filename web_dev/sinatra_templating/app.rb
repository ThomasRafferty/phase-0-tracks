# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true
# school = SQLite3::Database.new("campuses.db")

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/ages' do
  @students = db.execute("SELECT * FROM students")
  erb :ages
end


#Could not figure out release 2.  Could not access the campuses.db which we created.

# get '/campus' do
#   "Hello Word"
#   @campus = school.execute("SELECT * FROM locations")
#   # erb :campus
# end

# post '/campus' do
#   @campus = school.execute
#   school.execute("INSERT INTO locations (name, good_food) VALUES (?,?)", [params['name'], params['good_food'])
#   erb :campus
# end
# add static resources