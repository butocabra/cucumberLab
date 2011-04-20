Feature: User Account
  In order to track games as a user I should be able to signup, login, logout, and alter my
  user account.

  Scenario: SignUp
    Given I am on the signup page
    And I fill in the following:
    | user_email | foo@bar.com |
    | user_password | password |
    | user_password_confirmation | password |
    When I press "Join"
    Then I should see "you have been signed up"
    And I should be on the list of all games 

  Scenario: Login
    Given that I am not logged in
    And I have one user with email "foo@bar.com" with password "password"
    When I go to the login page
    And I fill in the following:
    | email | foo@bar.com |
    | password | password |
    And I press "login"
    Then I should see "logged in as foo@bar.com"
    And I should be on the list of all games 

  Scenario: Logout
    Given that I am logged in as "foo@bar.com" with password "password"
    And I am on my list of games
    When I press "logout"
    Then I should not be logged in
    And I should be on the welcome page
    
    
