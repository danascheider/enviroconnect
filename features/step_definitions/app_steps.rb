Given(/^I have visited '(.*)'$/) do |path|
  step "I visit '#{path}'"
end

When(/^I visit '(.*)'$/) do |path|
  visit path
end

When(/^I fill in the '(.*)' field with '(.*)'$/) do |field, value|
  fill_in field, with: value
end

Then(/^I should see an error message$/) do 
  expect(page).to have_css '#error_expl'
end