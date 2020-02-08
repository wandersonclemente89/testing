Feature: Google Search

Scenario: Failed login
Given I navigate to google page
And I search for 'protractor'
When I click in the search button
Then page results is shown