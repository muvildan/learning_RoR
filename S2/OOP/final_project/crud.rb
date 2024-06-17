# This module provides methods for creating and authenticating secure users using bcrypt encryption.
module Crud
  require 'bcrypt'
  puts "Module CRUD activated"

  # Creates a hash digest for the given password using bcrypt encryption.
  #
  # @param password [String] The password to be encrypted.
  # @return [String] The encrypted password.
  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  # Verifies if the given password matches the hash digest using bcrypt encryption.
  #
  # @param password [String] The password to be verified.
  # @return [BCrypt::Password] The bcrypt password object.
  def verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  # Creates secure users by encrypting their passwords using bcrypt encryption.
  #
  # @param users [Array<Hash>] An array of user hashes with :username and :password keys.
  # @return [Array<Hash>] An array of user hashes with encrypted passwords.
  def create_secure_users(users)
    users.each do |user|
      user[:password] = create_hash_digest(user[:password])
    end
    users
  end

  # Authenticates a user by checking if the username and password match the stored credentials.
  #
  # @param username [String] The username to be authenticated.
  # @param password [String] The password to be authenticated.
  # @param users [Array<Hash>] An array of user hashes with :username and :password keys.
  # @return [Hash, String] The authenticated user hash if the credentials are correct, or an error message if not.
  def authenticate_user(username, password, users)
    users.each do |user|
      return user if user[:username] == username && verify_hash_digest(user[:password]) == password
    end
    "Credentials were not correct"
  end
end
