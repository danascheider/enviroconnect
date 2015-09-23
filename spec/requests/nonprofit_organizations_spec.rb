require 'rails_helper'

RSpec.describe "NonprofitOrganizations", type: :request do
  describe "GET /nonprofit_organizations" do
    it "works! (now write some real specs)" do
      get nonprofit_organizations_path
      expect(response).to have_http_status(200)
    end
  end
end
