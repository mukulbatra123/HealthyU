Feature: display the nutrition page

  As a user on the nutrition page
  I want to see the nutrition page content
  So that I can navigate the application
  
Scenario: Showing collection of recommended calorie intakes
    Background: Calorie intakes in database
    Given I am on the nutrition page
    Then I should see all calorie outputs
    
Scenario: Deleting a single calorie output
    Background: Recommended calorie intakes in the database
    Given I am on the nutrition page
    When I press "calorie output"
    And I press the "Delete" button
    Then I should not see "old calorie output"
    
Scenario: Successfully updating a single calorie output
    Background: Recommended calorie intakes in the database
    Given I am on the nutrition page
    When I press "Calorie output"
    And I press "Edit"
    And I fill in "height" with "new height"
    When I press the "Update Calorie Info" button
    And I should see "new height" and "new calorie output"
    
Scenario: Adding calorie intake
    Given I am on the nutrition page
    When I press "Calculate calorie intake"
    And I fill in "height" with "x"
    And I fill in "weight" with "y"
    When I press the "Calorie output" button
    Then I should see "x" and "y"