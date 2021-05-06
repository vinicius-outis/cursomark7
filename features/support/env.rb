require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
    #selenium Driver
    config.default_driver = :selenium_chrome
    
    #time exec
    config.default_max_wait_time = 10

    config.app_host = "http://localhost:5000"
end
