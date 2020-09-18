Feature: Google Search
  Search for a string on the google home page

  #noinspection CucumberUndefinedStep
  Scenario: Search for a string
    Given I navigate to "http://www.google.com.br"
    When I search for "Wanderson"
    Then I should see the page title as "Wanderson - Pesquisa Google"