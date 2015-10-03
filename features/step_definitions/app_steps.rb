Given(/^I have visited '(.*)'$/) do |path|
  step "I visit '#{path}'"
end

When(/^I visit '(.*)'$/) do |path|
  visit path
end

When(/^I fill in the '(.*)' field with '(.*)'$/) do |field, value|
  fill_in field, with: value
end