Feature: display the users information

  As a user on HealthyU
  I want to have an account on the application
  So that I can have user specific information
  
Background: Users in database
  
Scenario: Successfully logging in
    Background: Users in database
    Given I am on the homepage
    And I press "Log in"
    Then I should be on the login page
    And I fill in "Email" with "reneerrusso@gmail.com"
    And I fill in "Password" with "healthyu"
    And I press the "Log in" button
    Then I should be on the users page

Scenario: Show all active users
    Background: Users in database
    Given I am on the homepage
    When I press "All Users"
    Then I should be on the users page
    Then I should see all the users
    
Scenario: Show info only for current user
    Background: Users in database
    Given The user is logged in
    Then I should be on the users page
    When I press "Profile"
    Then I should be on the current users page
  
Scenario: Successfully logging out
    Given The user is logged in
    Then I should be on the users page
    When I press "Log out"
    Then I should be on the homepage
    
Scenario: Successfully creating a new user
    Given I am on the homepage
    And I press the "Login" button
    Then I should be on the login page
    When I press "Sign up now!"
    Then I should be on the signup page
    And I fill in "Name" with "Renee Russo"
    And I fill in "Email" with "reneerrusso@gmail.com"
    And I fill in "Password" with "healthyu"
    And I press the "Create my account" button
    Then I should be on the users page