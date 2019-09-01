require 'rubygems'
require 'selenium-cucumber'
require 'selenium-webdriver'
require 'dotenv'
require 'byebug'
require_relative 'env_vars'

Dotenv.load

env = Class.new { extend EnvVars }

# driver initialization
begin
    chromedriver_path = File.join(File.absolute_path(''), 'chromedriver')
    Selenium::WebDriver::Chrome::Service.driver_path = chromedriver_path
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--ignore-certificate-errors')
    options.add_argument('--disable-popup-blocking')
    options.add_argument('--disable-translate')
    $driver = Selenium::WebDriver.for :chrome, options: options
    $driver.manage.window.maximize
    
  rescue Exception => e
    p e.message
    Process.exit(0)
    $driver.quit
  end
