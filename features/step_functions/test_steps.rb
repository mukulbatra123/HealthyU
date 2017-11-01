Given(/^I have not opened the application$/) do
  
end

When("I click the exercise link") do
  click_link("Exercises")
end

When("I click the nutrition link") do
  click_link("Nutrition")
end

Then /I should be on the homepage/ do
  visit "/"
end

Given(/^I am on the homepage$/) do
  visit "/"
end

Then /I should be on the exercises page/ do
  visit exercises_path
end

Then /I should be on the nutrition page/ do
  visit '/nutrition'
end

  
Then /I should see the title "HealthyU"/ do
  page.should have_content("HealthyU")
end