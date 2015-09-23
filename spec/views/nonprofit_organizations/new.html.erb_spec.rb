require 'rails_helper'

RSpec.describe "nonprofit_organizations/new", type: :view do
  before(:each) do
    assign(:nonprofit_organization, NonprofitOrganization.new())
  end

  it "renders new nonprofit_organization form" do
    render

    assert_select "form[action=?][method=?]", nonprofit_organizations_path, "post" do
    end
  end
end
