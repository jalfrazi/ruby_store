require 'spec_helper'

describe "product_sizes/index" do
  before(:each) do
    assign(:product_sizes, [
      stub_model(ProductSize,
        :product_id => 1,
        :size_id => 1,
        :quantity => 1
      ),
      stub_model(ProductSize,
        :product_id => 1,
        :size_id => 1,
        :quantity => 1
      )
    ])
  end

  it "renders a list of product_sizes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
