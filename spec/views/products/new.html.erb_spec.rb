require 'spec_helper'

describe "products/new" do
  before(:each) do
    assign(:product, stub_model(Product,
      :name => "MyString",
      :type_id => 1,
      :description => "MyText",
      :imageUrl => "MyString",
      :price => "9.99",
      :discount => "9.99",
      :stock => 1,
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path, :method => "post" do
      assert_select "input#product_name", :name => "product[name]"
      assert_select "input#product_type_id", :name => "product[type_id]"
      assert_select "textarea#product_description", :name => "product[description]"
      assert_select "input#product_imageUrl", :name => "product[imageUrl]"
      assert_select "input#product_price", :name => "product[price]"
      assert_select "input#product_discount", :name => "product[discount]"
      assert_select "input#product_stock", :name => "product[stock]"
      assert_select "input#product_status", :name => "product[status]"
    end
  end
end
