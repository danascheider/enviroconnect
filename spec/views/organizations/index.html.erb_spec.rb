require 'rails_helper'

RSpec.describe "organizations/index", type: :view do
  before(:each) do
    assign(:organizations, FactoryGirl.create_list(:organization, 2))
  end

  it "renders a list of organizations" do
    render
    expect(rendered).to include(Organization.first.name)
    expect(rendered).to include(Organization.last.name)
  end
end
