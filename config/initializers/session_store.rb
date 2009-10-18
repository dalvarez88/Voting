# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_voting_session',
  :secret      => 'c789a7103a2a98c838768676934241c5fd06e394c155d568a1c32e6bba3f0cac6ac742f4283695601ec31eb50f96c7f616692b7a92e3e925a0f055e529487d98'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
