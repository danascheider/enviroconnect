Given(/^an organization$/) do 
  @organization = FactoryGirl.create(:organization)
end

Given(/^there are (\d+) organizations$/) do |count|
  FactoryGirl.create_list(:organization, count.to_i)
end

When(/^I visit the organization's profile$/) do 
  visit "/organizations/#{@organization.id}"
end

When(/^I visit the organization's edit page$/) do 
  visit "/organizations/#{@organization.id}/edit"
end

When(/^I submit the edit form for the organization$/) do 
  click_button 'Update Organization'
end

When(/^I submit the organization creation form with:$/) do |table|
  @count = Organization.count

  table.hashes.each do |hash|
    hash.each do |key, val|
      fill_in "organization[#{key}]", with: val
    end
  end

  click_button 'Create Organization'
end

Then(/^I should see the organization's edit form$/) do 
  expect(page).to have_css "form#edit_organization_#{@organization.id}"
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

Then(/^it should re-render the organization's edit form$/) do
  step "I should see the organization's edit form"
end

Then(/^the organization's '(.*)' attribute should (not )?be '(.*)'$/) do |attribute, neg, value|
  @organization = Organization.where(id: @organization.id).first

  if neg
    expect(@organization.send(attribute.to_sym)).not_to eql value
  else
    expect(@organization.send(attribute.to_sym)).to eql value
  end
end

Then(/^there should be a new organization called '(.*)'$/) do |name|
  expect(Organization.find_by(name: name)).to be_truthy
end

Then(/^there should not be a new organization$/) do 
  expect(Organization.count).to eql @count
end

Then(/^I should see the new organization's profile$/) do 
  expect(current_path).to eql "/organizations/#{Organization.last.id}"
end