class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  # attr_reader :username, :password

  @first_name
  @last_name
  @email
  @username
  @password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Email: #{@email},
    Username: #{@username}, Password: #{@password}"
  end

  def set_username
    @username = "danvilmu"
  end
end

daniel = Student.new("Daniel", "Vilches", "danielvilches98@gmail.com", "danvilmu", "password")
miguel = Student.new("Miguel", "Vilches", "miguelvilches93@gmail.com", "migvilmu", "12345678")

# daniel.first_name = "Daniel"
# daniel.last_name = "Vilches"
# daniel.email = "danielvilches98@gmail.com"
# daniel.set_username
# daniel.username = "danvilmu" Can only set if included in attr_accessor (SETTER)

puts "After initializing the users with OOP"
puts daniel
puts miguel

daniel.password = miguel.password
puts "After changing the password with OOP"
puts daniel
puts miguel
