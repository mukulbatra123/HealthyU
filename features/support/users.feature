Feature: display the users information

  As a user on HealthyU
  I want to have an account on the application
  So that I can have user specific information
  
Background: Users in database

  
Scenario: Successfully logging in
    Background: Users in database
    Given I am on the homepage
    And I press the "Login" button
    Then I should be on the login page
    And I fill in "Email" with "reneerrusso@gmail.com"
    And I fill in "Password" with "healthyu"
    And I press the "Log in" button
    Then I should see "Renee Russo"

Scenario: Show all active users
    Background: Users in database
    Given I am on the homepage
    And I press "Users"
    Then I should see "Renee Russo"
    Then I should see "Mukul Batra"
  
Scenario: Successfully logging out
    Background: Users in database
    Given I am on the homepage
    And I press the "Logout" button
    Then I should not see "Renee Russo"
    