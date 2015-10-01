Given(/^an organization$/) do 
  @organization = FactoryGirl.create(:organization)
end

When(/^I visit the organization's profile$/) do 
  visit "/organizations/#{@organization.id}"
end

When(/^I visit the organization's edit page$/) do 
  visit "/organizations/#{@organization.id}/edit"
end

Then(/^I should see the organization's edit form$/) do 
  expect(page).to have_css "form#edit_organization_#{@organization.id}"
end

Given(/^there are (\d+) organizations$/) do |count|
  FactoryGirl.create_list(:organization, count.to_i)
end

Then(/^I should see (\d+) organizations listed$/) do |count|
  expect(page).to have_css '.list-item', count: count.to_i
end

Then(/^I should (not )?see its (.*)$/) do |neg, attribute|
  if neg
    expect(page).not_to have_text(Organization.human_attribute_name(attribute.to_sym))
  else
    expect(page).to have_text(@organization.send(attribute.to_sym))
  end
end