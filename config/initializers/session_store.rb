# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ddt_session',
  :secret      => '297a3c6db313fcb51e4be57c04aa576e0a77dd9b694d33f98f77e03faef100b3fd9ea046f9a1fdc4a2a698f33a53ee6bb54ad6a9d17c95af10acc2bb1f888b5f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
