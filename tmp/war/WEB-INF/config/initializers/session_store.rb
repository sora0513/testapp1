# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_testapp1_session',
  :secret      => 'be011abf199bd4da654441a63e2a77c3cbf68aa3352aa5bb6916431662d1cae88e4bcdf401dab2385168825a8ae09b25da0156db81a3788b2b80555f91105489'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
