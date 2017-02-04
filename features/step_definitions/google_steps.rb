require_relative '../../features/support/env'
require 'capybara/cucumber'

Capybara.default_driver = :selenium

Given(/^I am on google page$/) do
  visit 'http://www.google.co.uk'
end

When(/^I search for word "([^"]*)"$/) do |arg1|

   fill_in('lst-ib', :with => arg1)
  # click_button('btnK')
  #   find(:xpath, "//*[@id='tsf']//center/input[1]").click()
   Capybara.add_selector(:name) do
     xpath { |name| XPath.descendant[XPath.attr(:name) == name.to_s] }
   end

find(:name , 'btnG').click()
  puts 'test passed'
   end

Then(/^I should see the result$/) do

end