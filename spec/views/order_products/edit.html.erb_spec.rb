require 'spec_helper'

describe "order_products/edit" do
  before(:each) do
    @order_product = assign(:order_product, stub_model(OrderProduct,
      :order_id => 1,
      :product_id => 1,
      :quantity => 1
    ))
  end

  it "renders the edit order_product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => order_products_path(@order_product), :method => "post" do
      assert_select "input#order_product_order_id", :name => "order_product[order_id]"
      assert_select "input#order_product_product_id", :name => "order_product[product_id]"
      assert_select "input#order_product_quantity", :name => "order_product[quantity]"
    end
  end
end
