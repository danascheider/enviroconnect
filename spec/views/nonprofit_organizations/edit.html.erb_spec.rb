require 'rails_helper'

RSpec.describe "nonprofit_organizations/edit", type: :view do
  before(:each) do
    @nonprofit_organization = assign(:nonprofit_organization, NonprofitOrganization.create!(name: 'Organization'))
  end

  it "renders the edit nonprofit_organization form" do
    render
    assert_select("form[action='/nonprofit_organizations/#{@nonprofit_organization.id}'][method='post']")
  end
end
