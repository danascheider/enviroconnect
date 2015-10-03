require 'rails_helper'

RSpec.describe NonprofitOrganization, type: :model do
  it 'has type NonprofitOrganization' do 
    organization = NonprofitOrganization.create!(name: 'My Organization')
    expect(organization.type).to eql 'NonprofitOrganization'
  end
end
