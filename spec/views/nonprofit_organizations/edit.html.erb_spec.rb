require 'rails_helper'

RSpec.describe "nonprofit_organizations/edit", type: :view do
  before(:each) do
    @nonprofit_organization = assign(:nonprofit_organization, NonprofitOrganization.create!())
  end

  it "renders the edit nonprofit_organization form" do
    render

    assert_select "form[action=?][method=?]", nonprofit_organization_path(@nonprofit_organization), "post" do
    end
  end
end
