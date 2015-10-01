Given(/^an organization$/) do 
  @organization = FactoryGirl.create(:organization)
end

When(/^I visit the organization's profile$/) do 
  visit "/organizations/#{@organization.id}"
end

Given(/^there are (\d+) organizations$/) do |count|
  FactoryGirl.create_list(:organization, count.to_i)
end

Then(/^I should see (\d+) organizations listed$/) do |count|
  expect(page).to have_css '.list-item', count: count.to_i
end

Then(/^I should see its (.*)$/) do |attribute|
  expect(page).to have_text(@organization.send(attribute.to_sym))
end