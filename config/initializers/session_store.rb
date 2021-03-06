# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_restaurante_session',
  :secret      => 'baa14c784678fa376605ccad7f7b623d2d9c7a004b9d50e9112e4c36a33fa62503f40d846affa545e8a9b335455d74b969ecff92402dc24ef3de7f26172954df'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
