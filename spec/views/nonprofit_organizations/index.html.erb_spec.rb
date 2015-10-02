require 'rails_helper'

RSpec.describe "nonprofit_organizations/index", type: :view do
  before(:each) do
    assign(:nonprofit_organizations, [
      NonprofitOrganization.create!(name: 'Organization 1'),
      NonprofitOrganization.create!(name: 'Organization 2')
    ])
  end

  it "renders a list of nonprofit_organizations" do
    render
    expect(rendered).to include('Organization 1')
    expect(rendered).to include('Organization 2')
  end
end
