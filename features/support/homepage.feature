
Feature: display the homepage with title

  As a user opening the application
  I want to see the homepage
  So that I can navigate the application
    
  Scenario: Title present
    Given I am on the homepage
    Then I should see the title "HealthyU"
    
  Scenario: Exercise link present
    Given I am on the homepage
    When I click the exercise link
    Then I should be on the exercises page
    
    Scenario: Nutrition link present
    Given I am on the homepage
    When I click the nutrition link
    Then I should be on the nutrition page
    
    
    
    
    
    
