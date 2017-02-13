require 'cucumber'
require 'selenium-webdriver'
require 'test/unit'

class Search < Test::Unit::TestCase

#set gecko driver path

  @driver = Selenium::WebDriver.for :firefox
  # , driver_path:'C:\Ruby23-x64\bin\geckodriver.exe'

  @driver.get 'http://www.google.com'
  @driver.find_element(:name,'q').send_keys 'selenium'
  @driver.find_element(:name,'btnG').click
end