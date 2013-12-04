require "spec_helper"

describe ProductSizesController do
  describe "routing" do

    it "routes to #index" do
      get("/product_sizes").should route_to("product_sizes#index")
    end

    it "routes to #new" do
      get("/product_sizes/new").should route_to("product_sizes#new")
    end

    it "routes to #show" do
      get("/product_sizes/1").should route_to("product_sizes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/product_sizes/1/edit").should route_to("product_sizes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/product_sizes").should route_to("product_sizes#create")
    end

    it "routes to #update" do
      put("/product_sizes/1").should route_to("product_sizes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/product_sizes/1").should route_to("product_sizes#destroy", :id => "1")
    end

  end
end
