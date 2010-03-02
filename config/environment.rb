# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem 'inherited_resources', :source => 'http://gemcutter.org'
  config.gem 'formtastic'
  config.gem 'searchlogic'
  config.gem "authlogic"

  config.time_zone = 'UTC'
  config.i18n.default_locale = :es

  if RAILS_ENV == "development"
    puts "Setup request logger."
    config.middleware.use "RequestLogger"
  end
 
  config.action_controller.page_cache_directory = RAILS_ROOT + "/public/cache/"
end
