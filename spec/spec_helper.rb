require 'selenium-webdriver'
require 'faker'
require_relative '../lib/registration_form'
require_relative '../lib/generator/generator'

RSpec.configure do |config|
  config.formatter = :documentation
end

