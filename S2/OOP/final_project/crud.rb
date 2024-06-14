require 'bcrypt'

users = [
  { username: "daniel", password: "password1" },
  { username: "jack", password: "password2" },
  { username: "arya", password: "password3" },
  { username: "jonshow", password: "password4" },
  { username: "heisenberg", password: "password5" }
]

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt::Password.new(password)
end

def create_secure_users(users)
  users.each do |user|
    user[:password] = create_hash_digest(user[:password])
  end
  puts users
end

create_secure_users(users)
