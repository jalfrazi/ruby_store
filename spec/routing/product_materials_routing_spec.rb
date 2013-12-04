require "spec_helper"

describe ProductMaterialsController do
  describe "routing" do

    it "routes to #index" do
      get("/product_materials").should route_to("product_materials#index")
    end

    it "routes to #new" do
      get("/product_materials/new").should route_to("product_materials#new")
    end

    it "routes to #show" do
      get("/product_materials/1").should route_to("product_materials#show", :id => "1")
    end

    it "routes to #edit" do
      get("/product_materials/1/edit").should route_to("product_materials#edit", :id => "1")
    end

    it "routes to #create" do
      post("/product_materials").should route_to("product_materials#create")
    end

    it "routes to #update" do
      put("/product_materials/1").should route_to("product_materials#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/product_materials/1").should route_to("product_materials#destroy", :id => "1")
    end

  end
end
