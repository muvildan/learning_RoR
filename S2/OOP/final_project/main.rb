require_relative "crud" # if the file is in the same directory, we need to use the relative path

# $LOAD_PATH << "." # if we don't want the previous, we can load the path like so
# require "crud" # and then require de file with just require

users = [
  { username: "daniel", password: "password1" },
  { username: "jack", password: "password2" },
  { username: "arya", password: "password3" },
  { username: "jonshow", password: "password4" },
  { username: "heisenberg", password: "password5" }
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users
