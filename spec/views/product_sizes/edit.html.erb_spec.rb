require 'spec_helper'

describe "product_sizes/edit" do
  before(:each) do
    @product_size = assign(:product_size, stub_model(ProductSize,
      :product_id => 1,
      :size_id => 1,
      :quantity => 1
    ))
  end

  it "renders the edit product_size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => product_sizes_path(@product_size), :method => "post" do
      assert_select "input#product_size_product_id", :name => "product_size[product_id]"
      assert_select "input#product_size_size_id", :name => "product_size[size_id]"
      assert_select "input#product_size_quantity", :name => "product_size[quantity]"
    end
  end
end
