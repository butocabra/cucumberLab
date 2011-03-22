Feature: Games Objects
  In order to track games I should be able to create, edit, search for, and
  identify a game as part of my inventory.

  Scenario: List all games
	Given that I want to see a list of games that exist
	And there are 10 games that exist
  	When I go to the list of all games
	Then I should see "game1"
	And I should see "game10"

  Scenario: Search for a game
	Given there are 5 games that exist with a title containing "asdf"
	And there are 10 games without "asdf"
	When I go to the game search page
	And I fill in "q" with "asdf" 
	And I press "search"
	Then I should see "asdf" within "#resultsDiv"
	And I should see "5 games"
	

