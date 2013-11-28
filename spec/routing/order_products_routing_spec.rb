require "spec_helper"

describe OrderProductsController do
  describe "routing" do

    it "routes to #index" do
      get("/order_products").should route_to("order_products#index")
    end

    it "routes to #new" do
      get("/order_products/new").should route_to("order_products#new")
    end

    it "routes to #show" do
      get("/order_products/1").should route_to("order_products#show", :id => "1")
    end

    it "routes to #edit" do
      get("/order_products/1/edit").should route_to("order_products#edit", :id => "1")
    end

    it "routes to #create" do
      post("/order_products").should route_to("order_products#create")
    end

    it "routes to #update" do
      put("/order_products/1").should route_to("order_products#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/order_products/1").should route_to("order_products#destroy", :id => "1")
    end

  end
end
