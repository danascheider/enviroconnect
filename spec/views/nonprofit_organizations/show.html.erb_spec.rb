require 'rails_helper'

RSpec.describe "nonprofit_organizations/show", type: :view do
  before(:each) do
    @nonprofit_organization = assign(:nonprofit_organization, NonprofitOrganization.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
