# Say hello world in multiple ways
# Simple puts string
# Using a variable
# Using a method

# Simple puts string
puts "Hello, World!" # nil after output
p "Hello, World!" # No nil after output
print "Hello, World!" # No new line "\n" after output

# Using a variable
greeting = "Hello, World!" # def the variable
puts greeting # puts the variable

# Using a method
def say_hello(thing_to_say)
  puts thing_to_say
end

say_hello "Hello, World!" # calls the method passing a string as an argument
say_hello(greeting) # calls the method passing a variable as an argument
