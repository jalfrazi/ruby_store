require 'spec_helper'

describe "product_categories/index" do
  before(:each) do
    assign(:product_categories, [
      stub_model(ProductCategory,
        :product_id => 1,
        :category_id => 1
      ),
      stub_model(ProductCategory,
        :product_id => 1,
        :category_id => 1
      )
    ])
  end

  it "renders a list of product_categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
