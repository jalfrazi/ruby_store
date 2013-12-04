require 'spec_helper'

describe "product_categories/new" do
  before(:each) do
    assign(:product_category, stub_model(ProductCategory,
      :product_id => 1,
      :category_id => 1
    ).as_new_record)
  end

  it "renders new product_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => product_categories_path, :method => "post" do
      assert_select "input#product_category_product_id", :name => "product_category[product_id]"
      assert_select "input#product_category_category_id", :name => "product_category[category_id]"
    end
  end
end
