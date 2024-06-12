# if/elsif/else

# Simple calculator
puts "Simple calculator"
25.times {print "-"}
puts "\n"
puts "Enter the first  number"
num_1 = gets.chomp
puts "Enter the second numbers"
num_2 = gets.chomp
puts "What do you want to do?"
puts "Enter 1 for adding up, 2 for substracting, 3 for multiplying, 4 for dividing, 5 for modulus"
user_option = gets.chomp

def sum(first_num, second_num)
    first_num.to_f + second_num.to_f
end

def substract(first_num, second_num)
    first_num.to_f - second_num.to_f
end

def multiply(first_num, second_num) 
    first_num.to_f * second_num.to_f
end

def divide(first_num, second_num)
    first_num.to_f / second_num.to_f
end

def modulus(first_num, second_num)
    first_num.to_f % second_num.to_f
end

25.times {print "-"}
puts "\n"

if user_option == "1"
    puts "The first number (#{num_1}) plus the second number (#{num_2}) is #{sum(num_1, num_2)}"
elsif user_option == "2"
    puts "The first number (#{num_1}) substracted to the second number (#{num_2}) is #{substract(num_1, num_2)}"
elsif user_option == "3"
    puts "The first number (#{num_1}) multiplied by the second number (#{num_2}) is #{multiply(num_1, num_2)}"
elsif user_option == "4"
    puts "The first number (#{num_1}) divided by the second number (#{num_2}) is #{divide(num_1, num_2)}"
elsif user_option == "5"
    puts "The module of the first number (#{num_1}) divided by the second number (#{num_2}) is #{modulus(num_1, num_2)}"
else
    puts "Invalid entry"
end

