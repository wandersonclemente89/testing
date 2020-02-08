Feature: Abilities
	Abilities provide passive effects for Pokémon in battle or in the overworld.
	Pokémon have multiple possible abilities but can have only one ability at a time
	
	Scenario: Verify if all abilities have a name
	Given I wants to see all "abilities"
	When I send a request to the "ability" resource
	Then a list with 20 "abilities" is returned
	And all abilities have a name
	And the returned http status code is 200

	Scenario Outline: Verify ability name "<name>"
	Given I wants to see a "ability"
	When I send the id <id> of the "ability" resource
	Then the proper ability "<name>" is returned
	And the returned http status code is 200

	Examples:
		|id	|name			|	
		|1	|stench			|
		|2	|drizzle		|
		|3	|speed-boost	|
		|4	|battle-armor	|