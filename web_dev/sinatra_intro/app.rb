# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /

get '/' do
  "Hello World"
end

get '/:name/is/:age' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  p student.to_s
end


#Work I added#########

get '/contact' do
  "Our address is 1600 New York Ave. <br> New York, NY 12255"
end

get '/:name/is/:age' do
  "#{params[:name]} is #{params[:age]} years old."
end


get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end


#I could not figure out how to convert these to integers at all :(

# get '/add/:number1/:number2' do
#   numbers = []
#   numbers.push(params[:number1]).to_i
#   numbers.push(params[:num2ber]).to_i
# end

# get '/add/:number1/:number2' do
#   @number1.to_i
#   @number2.to_i
#   p @num2 + @num1
# end

# get '/add/:number1/number2 do
#   sum = number1.to_i + number2
#   p sum
# end