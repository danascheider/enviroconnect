require 'rails_helper'

RSpec.describe "nonprofit_organizations/index", type: :view do
  before(:each) do
    assign(:nonprofit_organizations, FactoryGirl.create_list(:nonprofit_organization, 2))
  end

  it "renders a list of nonprofit_organizations" do
    render
    expect(rendered).to include(NonprofitOrganization.first.name)
    expect(rendered).to include(NonprofitOrganization.last.name)
  end
end
