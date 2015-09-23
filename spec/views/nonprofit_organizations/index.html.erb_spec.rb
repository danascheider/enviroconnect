require 'rails_helper'

RSpec.describe "nonprofit_organizations/index", type: :view do
  before(:each) do
    assign(:nonprofit_organizations, [
      NonprofitOrganization.create!(),
      NonprofitOrganization.create!()
    ])
  end

  it "renders a list of nonprofit_organizations" do
    render
  end
end
