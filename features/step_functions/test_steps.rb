Given(/^I have not opened the application$/) do
  
end

When("I click on the link") do |link|
  click_link(link)
end

Then /I should be on the homepage/ do
  visit "/"
end

Given(/^I am on the homepage$/) do
  visit "/"
end

When("I look on the page") do
  
end


When ("I click the exercise link") do |selector|
  find(selector).click
  end
  
Then /I should see the title "HealthyU"/ do
  page.should have_content("HealthyU")
end