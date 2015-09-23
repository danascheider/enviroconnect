require "rails_helper"

RSpec.describe NonprofitOrganizationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/nonprofit_organizations").to route_to("nonprofit_organizations#index")
    end

    it "routes to #new" do
      expect(:get => "/nonprofit_organizations/new").to route_to("nonprofit_organizations#new")
    end

    it "routes to #show" do
      expect(:get => "/nonprofit_organizations/1").to route_to("nonprofit_organizations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/nonprofit_organizations/1/edit").to route_to("nonprofit_organizations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/nonprofit_organizations").to route_to("nonprofit_organizations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/nonprofit_organizations/1").to route_to("nonprofit_organizations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/nonprofit_organizations/1").to route_to("nonprofit_organizations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/nonprofit_organizations/1").to route_to("nonprofit_organizations#destroy", :id => "1")
    end

  end
end
