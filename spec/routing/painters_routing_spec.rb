require "spec_helper"

describe PaintersController do
  describe "routing" do

    it "routes to #index" do
      get("/painters").should route_to("painters#index")
    end

    it "routes to #new" do
      get("/painters/new").should route_to("painters#new")
    end

    it "routes to #show" do
      get("/painters/1").should route_to("painters#show", :id => "1")
    end

    it "routes to #edit" do
      get("/painters/1/edit").should route_to("painters#edit", :id => "1")
    end

    it "routes to #create" do
      post("/painters").should route_to("painters#create")
    end

    it "routes to #update" do
      put("/painters/1").should route_to("painters#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/painters/1").should route_to("painters#destroy", :id => "1")
    end

  end
end
