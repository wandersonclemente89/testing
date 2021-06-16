Feature: Berries
	Berries are small fruits that can provide HP and status condition restoration,
	 stat enhancement, and even damage negation when eaten by Pokémon.
	
	Scenario: Retrieve berries with default limit
	Given I wants to see all "berries"
	When I send a request to the "berry" resource
	Then a list with 20 "berries" is returned
	And the returned http status code is 200
	
	Scenario: Retrieve all berries with limit and offset
	Given I wants to see all "berries"
	And I set the limit to 64
	And I set offset to 0
	When I send a request to the "berry" resource
	Then a list with 64 "berries" is returned
	And the returned http status code is 200
	
	Scenario: Verify the Pagination
	Given I wants to see all "berries"
	And I set the limit to 5
	And I set offset to 5
	When I send a request to the "berry" resource
	Then a list with 5 "berries" is returned
	And I can see the previous and next page link
	And the returned http status code is 206