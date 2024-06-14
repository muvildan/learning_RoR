# Use case for students class - Authentication systems in web applications
# For now think of students as users
# Done with usernames and passwords
# Security for users information is very important
# Passwwords are virtually never stored in their string forms
# Hashed digests are stored in the db's
# A popular hashing algorithm is MD5 - bcrypt
# Creates a hash digest of the string

require 'bcrypt'

my_password = BCrypt::Password.create("my password")
puts my_password

# puts my_password.version              #=> "2a"
# puts my_password.cost                 #=> 12
# puts my_password == "my password"     #=> true
# puts my_password == "not my password" #=> false

my_password = BCrypt::Password.new("$2a$12$GyDoyCebvfrzdDTqB67I8.rdARj6pOQGA.Gpyt2.pAo6cCN1amlBS")
puts my_password == "my password" #=> true
puts my_password == "not my password" #=> false
