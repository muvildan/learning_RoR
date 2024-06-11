# Prompt 1
puts "Enter your first name"
first_name = gets.chomp

# Prompt 2
puts "Enter your last name"
last_name = gets.chomp

# Solution
full_name = first_name + " " + last_name
puts "Your full name is #{full_name}"
puts "Your full name reversed is #{full_name.reverse}"
puts "Your name has #{full_name.length} characters in it"