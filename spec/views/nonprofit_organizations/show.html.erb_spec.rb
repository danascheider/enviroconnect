require 'rails_helper'

RSpec.describe "nonprofit_organizations/show", type: :view do
  before(:each) do
    @nonprofit_organization = assign(:nonprofit_organization, FactoryGirl.create(:nonprofit_organization))
  end

  it "renders attributes in <p>" do
    render :template => "nonprofit_organizations/show.html.erb"
    expect(rendered).to include(@nonprofit_organization.name)
  end
end
