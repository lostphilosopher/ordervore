# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :cookie_store, key: "_ordervore_session_#{ENV['HEROKU_ENV'] || 'local'}"
