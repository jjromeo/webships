Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

	Scenario: Registering:
		
		Scenario: When a name is put in normally.
		
		Given I am on the homepage
		Then I should see "New Game"
		Given I click "New Game"
		Then I should see "Enter your name to play"
		And I fill in "name" with "Jerome"
		Then I press "submit"
		Then I should see "Welcome to the game"
		
		Scenario: When a name isn't put in.
		Given I am on the homepage
		Then I should see "New Game"
		Given I click "New Game"
		Then I should see "Enter your name to play"
		Given I fill in "name" with ""
		Then I press "submit"
		Then I should see "You didn't enter anything"

	Scenario: Registering another player

		Scenario: When a second player's name is put in.

		Given I have registered with Jerome Pratt
		Given I click "Continue"
