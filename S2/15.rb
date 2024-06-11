# String concatenation
first_name = "Daniel" # interpolation allowed
last_name = 'Vilches' # interpolation forbidden
puts first_name + " " + last_name


# String interpolation
puts "My first name is #{first_name} and my last name is #{last_name}."
full_name = first_name + " " + last_name
puts full_name


# Methods, how to find them
full_name.class # Will output its data type, string
10.class # integer
10.0.class # float
first_name.methods # Will output all available methods for that object\


# Common methods
puts 10.to_s # Transform the given data type to a string
puts 10.to_s.class # Now this outputs as a string instead of an integer

full_name.length # Outputs the length of the class

full_name.reverse # Reverses the given class

full_name.capitalize # Capitalizes the first letter of each word

full_name.empty? # Will output false, as it checks if the variable has content or not
"".empty? # Will output true

"".nil? # Will output false, as an empty string is not nil
nil.nil? # True

sentence = "Welcome to the jungle!"
sentence.sub("the jungle", "utopia") # sub will replace the targeted part of a string for the given one
sentence.gsub("the jungle", "utopia") # gsub will do the same but globally


# Variable assignment
first_name = "Daniel"
new_first_name = first_name
first_name = "Dani"
puts new_first_name # Outputs "Daniel" as it was assigned the value of first_name when it was "Daniel" [!]


# Escaping
'The new first name is #{new_first_name}' # This should not work, but if we print it, it'll output "The new first name is \#{new_first_name}". This is escaping
"The new first name is \#{new_first_name}" # This means we can use \ to escape special characters, like interpolation, by adding \ before the special character
'Daniel asked 'Hey Dani, how are you doing?'' # This will not work. We're using single quotes inside single quotes
'Daniel asked \'Hey Dani, how are you doing?\'' # This, though, will work because we're escaping the single quotes right before they are interpreted by Ruby