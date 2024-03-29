require 'spec_helper'

describe "product_categories/edit" do
  before(:each) do
    @product_category = assign(:product_category, stub_model(ProductCategory,
      :product_id => 1,
      :category_id => 1
    ))
  end

  it "renders the edit product_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => product_categories_path(@product_category), :method => "post" do
      assert_select "input#product_category_product_id", :name => "product_category[product_id]"
      assert_select "input#product_category_category_id", :name => "product_category[category_id]"
    end
  end
end
