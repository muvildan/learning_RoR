require_relative "crud"

# The Student class represents a student in a school.
class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  # Initializes a new instance of the Student class.
  #
  # @param first_name [String] The first name of the student.
  # @param last_name [String] The last name of the student.
  # @param email [String] The email address of the student.
  # @param username [String] The username of the student.
  # @param password [String] The password of the student.
  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  # Returns a string representation of the student.
  #
  # @return [String] The string representation of the student.
  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Email: #{@email},
    Username: #{@username}, Password: #{@password}"
  end

  # Sets the username of the student.
  def set_username
    @username = "danvilmu"
  end
end

# Create a student
daniel = Student.new("Daniel", "Vilches", "danielvilches98@gmail.com", "danvilmu", "password")
puts "Student: \n#{daniel}"
puts

# Hash its password with the CRUD module functions
hashed_password = daniel.create_hash_digest(daniel.password)
puts "Hashed password: #{hashed_password}"
