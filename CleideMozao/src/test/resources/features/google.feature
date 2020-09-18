Feature: Google Home

Scenario Outline: Navigate to the Home Page
	Given I navigate to the "<url>"
	Then I close the Browser
	
	Examples: dados
	|url|
	|http://www.google.com.br|
	