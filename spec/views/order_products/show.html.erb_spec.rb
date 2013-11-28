require 'spec_helper'

describe "order_products/show" do
  before(:each) do
    @order_product = assign(:order_product, stub_model(OrderProduct,
      :order_id => 1,
      :product_id => 1,
      :quantity => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
