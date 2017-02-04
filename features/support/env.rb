require 'cucumber'
require 'rspec'
require 'capybara/cucumber'

Capybara.default_driver = :selenium

Capybara.add_selector(:id) do
  xpath { |id| XPath.descendant[XPath.attr(:id) == id.to_s] }
end
