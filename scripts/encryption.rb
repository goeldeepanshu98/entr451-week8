# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:
# 1. encrypt a secret and puts encrypted string
secret = "Kutta"
encrypted_secret = BCrypt::Password.create(secret)
# 2. prepare encrypted string for testing
user_submitted_password = "Kutta"
puts BCrypt::Password.new(encrypted_secret) == user_submitted_password
# 3. test secret against prepared encrypted string
