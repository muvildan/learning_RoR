users = [
  { username: "daniel", password: "password1" },
  { username: "jack", password: "password2" },
  { username: "arya", password: "password3" },
  { username: "jonshow", password: "password4" },
  { username: "heisenberg", password: "password5" }
]

puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"
puts "\n"

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    return user_record if user_record[:username] == username && user_record[:password] == password
  end
  "Credentials were not correct. Try again."
end

attempts = 1

while attempts < 4
  puts "User name:"
  username = gets.chomp

  puts "Password:"
  password = gets.chomp

  auth_result = auth_user(username, password, users)
  puts auth_result

  break if auth_result != "Credentials were not correct. Try again."

  puts "Press n to quit or any other key to continue"
  input = gets.chomp.downcase
  break if input == "n"

  attempts += 1
end

puts "You have exceeded the number of attempts" if attempts == 4
