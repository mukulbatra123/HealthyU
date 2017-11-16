Feature: display the exercise page

  As a user on the exercise page
  I want to see the exercise page content
  So that I can navigate the application
    
  Scenario: Title present
    Given I am on the exercise page
    Then I should see the title "Exercises"
    
  Scenario: Muscle links present
    Given I am on the exercise page
    When I click on the muscle link
    Then I should be on the exercises page

    