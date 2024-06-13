class Student
  @first_name
  @last_name
  @email
  @username
  @password

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Email: #{@email}"
  end
end

daniel = Student.new
puts daniel
daniel.first_name = "Daniel"
daniel.last_name = "Vilches"
daniel.email = "danielvilches98@gmail.com"
puts daniel
