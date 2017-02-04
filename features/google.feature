Feature: Search an item on google

  Scenario:
    Given I am on google page
    When I search for word "ruby"
    Then I should see the result