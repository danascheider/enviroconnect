require 'rails_helper'

RSpec.describe "organizations/new", type: :view do
  before(:each) do
    assign(:organization, Organization.new(
      :name => "MyString",
      :mission => "MyString",
      :type => "",
      :phone => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1
    ))
  end

  it "renders new organization form" do
    render

    assert_select "form[action=?][method=?]", organizations_path, "post" do

      assert_select "input#organization_name[name=?]", "organization[name]"

      assert_select "input#organization_mission[name=?]", "organization[mission]"

      assert_select "select#organization_type[name=?]", "organization[type]"

      assert_select "input#organization_phone[name=?]", "organization[phone]"

      assert_select "input#organization_address_1[name=?]", "organization[address_1]"

      assert_select "input#organization_address_2[name=?]", "organization[address_2]"

      assert_select "input#organization_city[name=?]", "organization[city]"

      assert_select "input#organization_state[name=?]", "organization[state]"

      assert_select "input#organization_zip[name=?]", "organization[zip]"
    end
  end
end
