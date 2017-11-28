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
    
  Scenario: Adding exercises
    Given I am on the exercise page
    When I press "Add New Exercise"
    And I fill in "muscle" with "Eye"
    And I fill in "description" with "Blink"
    When I press the "Save Exercise" button
    Then I should see "Eye" and "Blink"
    
  Scenario: Editing exercises
    Given I am on the exercise page
    # background
    When I press "Add New Exercise"
    And I fill in "muscle" with "Eye"
    And I fill in "description" with "Blink"
    When I press the "Save Exercise" button
    Then I should see "Eye" and "Blink"
    # background
    When I press "Eye"
    And I press "Edit"
    And I fill in "muscle" with "Eyeball"
    When I press the "Update Muscle Info" button
    And I should see "Eyeball" and "Blink"
    
  Scenario: Deleting exercises
    Given I am on the exercise page
    # background
    When I press "Add New Exercise"
    And I fill in "muscle" with "Eye"
    And I fill in "description" with "Blink"
    When I press the "Save Exercise" button
    Then I should see "Eye" and "Blink"
    # background
    When I press "Eye"
    And I press the "Delete" button
    Then I should not see "Eyeball"