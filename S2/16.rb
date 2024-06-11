puts "What is your first name?" # Prompt to the user
first_name = gets.chomp # Variable assignment
puts "Thank you, you said your first name, #{first_name}!" # Output will work just fine

puts "Enter a number to multiply by 2." # Prompt to the user
input = gets.chomp # Variable assignment
puts input * 2 # This won't work as expected, as it would do string concatenation of "n" + "n".
puts input.to_i * 2 # This will work as expected, as the string has been transformed to an integer.
