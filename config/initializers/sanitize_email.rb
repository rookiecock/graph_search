if Rails.env.development?
  SanitizeEmail::Config.configure do |config|
    config[:sanitized_to] =         'george@dewar.co.nz'

    # run/call whatever