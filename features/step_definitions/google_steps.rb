require_relative '../../features/support/env'
require 'capybara/cucumber'
require 'selenium-webdriver'

# Capybara.default_driver = :selenium
driver = Selenium::WebDriver.for :firefox
Given(/^I am on google page$/) do
  # visit 'http://www.google.co.uk'
  driver.get 'http://www.google.co.uk'

end

When(/^I search for word (.*)$/) do |arg1|

#    fill_in('lst-ib', :with => arg1)
#   # click_button('btnK')
#   #   find(:xpath, "//*[@id='tsf']//center/input[1]").click()
#    Capybara.add_selector(:name) do
#      xpath { |name| XPath.descendant[XPath.attr(:name) == name.to_s] }
#    end
#
# find(:name , 'btnG').click()
#   puts 'test passed'

  driver.find_element(:name,'q').send_keys(arg1)
   end

Then(/^I should see the result$/) do
driver.find_element(:name,'btnG').click
  puts 'test passed!!!...'
  driver.quit
end