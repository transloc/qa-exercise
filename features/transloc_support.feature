Feature: A skeleton cucumber selenium project for TransLoc

  Scenario: I want to log in to the the-internet.herokuapp.com portal
    Given I navigate to the-internet.herokuapp
    And   I fill in the username with "tomsmith" and password with "SuperSecretPassword!"
	When  I tap the log in button
	Then  I should be logged in
