Feature: User Account
  In order to track games as a user I should be able to signup, login, logout, and alter my
  user account.

  Scenario: SignUp
    Given I am on the signup page
    And I fill in the following:
    | email | foo@bar.com |
    | password | password |
    | confirmPassword | password |
    When I press "sign up"
    Then a user with the email "foo@bar.com" will exist

  Scenario: Login
    Given that I am not logged in
    When I go to the login page
    And I fill in the following:
    | email | foo@bar.com |
    | password | password |
    And I press "login"
    Then I should be logged in
    And I should be on my list of games 

  Scenario: Logout
    Given that I am logged in
    And I am on my list of games
    When I press "logout"
    Then I should not be logged in
    And I should be on the welcome page
    
    
