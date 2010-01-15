# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bok_session',
  :secret      => '4c0ec0bf1fc24f5210554dd4134df5e6442c987ebc05dc622b8166bd45fc1100eb5545b12c639055b99c7330d218f749a224ae1a6494f89e4af1c8755f1ec02e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
