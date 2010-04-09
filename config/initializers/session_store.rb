# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_play_session',
  :secret      => '152bf8532ed805fee17ae261080df2a170e55b8e2f996d5eff7ea865ba0965296e80bbbf0fac521c340b0de25735f47a6cfc70610dd2f4e92ce528b469061b4d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
