# Simple calculator
puts "Simple calculator"
25.times { print "-" }
puts "\n"
puts "Enter the first  number"
num_1 = gets.chomp
puts "Enter the second numbers"
num_2 = gets.chomp

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
  first_num.to_f / second_num
end

def modulus(first_num, second_num)
  first_num.to_f % second_num.to_f
end

25.times { print "-" }
puts "\n"

puts "The first number plus the second number is #{sum(num_1, num_2)}"
puts "The first number substracted to the second number is #{substract(num_1, num_2)}"
puts "The first number multiplied by the second number is #{multiply(num_1, num_2)}"
puts "The first number divided by the second number is #{divide(num_1, num_2)}"
puts "The module of the first number divided by the second number is #{modulus(num_1, num_2)}"
