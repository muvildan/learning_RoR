# Arrays --> Ordered list of items
[1, 2, 3, 4, 5, 6, 7, 8, 9]

# It can be anything
[true, 54, "bananas", 32.32]

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# Ranges
print "\n"
x = 1..25 # They can be integers
puts "Range: #{x}"
puts "Data type: #{x.class}"
puts "Array: #{x.to_a}"
puts "Shuffled: #{x.to_a.shuffle}"
print "\n"

y = "a".."z" # Or letters
puts "Range: #{y}"
puts "Data type: #{y.class}"
puts "Array: #{y.to_a}"
puts "Shuffled: #{y.to_a.shuffle}"
print "\n"

# Add elements to the array
a << 10 # Let's add 10 to the array
a.push(11) # Or we can add it like this
a.append(12) # Or like this
puts "10, 11 and 12 added to the array: #{a}"
puts "The last element is #{a.last}"
puts "The first element is #{a.first}"
puts "Now we add an element to the begining #{a.unshift(0)}"
puts "\n"
puts "Now we add a duplicate element: #{a << 12}"
puts "But we can remove it with uniq: #{a.uniq}" # uniq removes duplicates
puts "What is we print the array again? #{a}" # The duplicate is still there cause we didn't use !
puts "Oops, the duplicate is still there. We need to use uniq! to actually remove it: #{a.uniq!}"
print "\n"

# Checking if the array is empty
a.empty? # false
b = []
b.empty? # true

# Checking if an element is in the array
a.include?(12) # true
a.include?(13) # false

# Remove elements from the array
puts "We can remove the last element with pop: #{a.pop} #{a}"
puts "We can remove the first element with shift: #{a.shift} #{a}"
puts "We can remove the element at index 3 with delete_at: #{a.delete_at(3)} #{a}"
puts "We can remove the element 12 with delete: #{a.delete(12)} #{a}"
print "\n"

# Joining an array
a.delete(10) # Cleanclean
a.delete(11) # Cleanclean
puts "Joining arrays with join: #{a.join}"
puts "Joining arrays with join and a separator: #{a.join('-')}"

# Joining different arrays
b = [1, 2, 3]
c = [4, 5, 6]
puts "Joining arrays with +: #{b + c}"
puts "Joining arrays with the method concat: #{b.concat(c)}"
print "\n"

# Splitting arrays
puts "Splitting a string: #{'I am a string'.split}"
puts "Splitting the string I-am-a-string with a separator split('-'')): #{'I-am-a-string'.split('-')}"
puts "\n"

# Iterators
puts "Iterating through the array"
for i in a
  print i
end
print " Looping with 'for' is not the preferred way in Ruby"
puts "\n"
a.each { |num| print num } # This is the preferred way in Ruby
print " Looping with 'each' is the preferred way in Ruby"
puts "\n\n"

# Select
puts "Selecting elements greater than 4: #{a.select { |num| num > 4 }}"
puts "Rejecting elements greater than 4: #{a.reject { |num| num > 4 }}"
puts "\n"

# Map
puts "Multiplying each element by 3: #{a.map { |num| num * 3 }}"
puts "Multiplying each element by 3 and adding 1: #{a.map { |num| num * 3 + 1 }}"
puts "\n"
