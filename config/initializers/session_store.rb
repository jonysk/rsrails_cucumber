# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cuc_demo_session',
  :secret      => 'ce42a23f09897052d611d24b724634ff10ae96aeb237bffd8f3dcd0fadfbeb146c9c06b172d53377c0e9903679ddc0e60804c667ffe24d324b1fb7ffca47a744'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
