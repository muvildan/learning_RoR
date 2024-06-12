# Hash
sample_hash = { 'a' => 1, 'b' => 2, 'c' => 3 } # Hashes are key-value pairs
my_details = { 'Name' => 'Daniel', 'Favcolor' => ['Green, Blue'] }
puts "Hash: #{my_details}"
puts "Keys in the hash: #{my_details.keys}"
puts "Values in the hash: #{my_details.values}"
puts "Value of the key 'name': #{my_details['name']}"
puts "\n"

# You can also have hashes with symbols as keys
symbols_hash = { a: 1, b: 2, c: 3 }
puts "Hash with symbols: #{symbols_hash}"
puts "Keys in the hash: #{symbols_hash.keys}"
puts "Values in the hash: #{symbols_hash.values}"
puts "Value of the key 'a': #{symbols_hash[:a]}"
puts "\n"

# Add a new key-value pair
my_details['Age'] = 26
puts "New key-value pair added: #{my_details}"

# Change the value of a key
my_details['Name'] = 'Daniel Vilches'
puts "Value of the key 'name' changed: #{my_details}"

# Delete a key-value pair
my_details.delete('Favcolor')
puts "Key-value pair 'favcolor' deleted: #{my_details}"
puts "\n"
my_details['Favcolor'] = ['Green, Blue']

# Iterating over hashes
puts "Iterating over the hash:"
my_details.each {|key, value| puts "Key: #{key}, Value: #{value}"}
my_details.select do |key, value|
    puts "Selecting the key-value pair with an array value: #{key} #{value}" if value.is_a?(Array)
end
puts "\n"