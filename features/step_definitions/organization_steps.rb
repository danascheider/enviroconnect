When(/^I visit an organization's profile$/) do 
  @organization = FactoryGirl.create(:organization)
  visit "/organizations/#{@organization.id}"
end