$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'kaminari/bootstrap3'

require 'action_controller'
require 'action_view'
class TestApp < Rails::Application
  secrets.secret_key_base = 'test'
end
require 'rspec/rails'
require 'kaminari'
