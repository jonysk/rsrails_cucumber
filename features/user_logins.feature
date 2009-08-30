Feature: Manage user logins
  In order to access all features of the user
  A regular user should be able
  to login in the system
  
  Scenario: Accessing deep links
    Given a regular user exists
    When I go to the homepage
    Then I should be redirected to the login page
    And I should see "Please, log in to access this area"
  
  Scenario: Entering invalid credentials
    Given a regular user exists
    When I go to the login page
    And I fill in "login" with "admin"
    And I fill in "password" with "wrong pwd"
    And I press "Log in"
    Then I should see "Invalid login/password"

  Scenario: Entering valid credentials
    Given a regular user exists
    When I go to the homepage
    And I fill in "login" with "admin"
    And I fill in "password" with "administrator"
    And I press "Log in"
    Then I should see "Welcome Administrator!"
