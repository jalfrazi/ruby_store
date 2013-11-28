require 'spec_helper'

describe "sizes/new" do
  before(:each) do
    assign(:size, stub_model(Size,
      :product_id => 1,
      :name => "MyString",
      :country => "MyString",
      :in => "9.99",
      :mm => "9.99"
    ).as_new_record)
  end

  it "renders new size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sizes_path, :method => "post" do
      assert_select "input#size_product_id", :name => "size[product_id]"
      assert_select "input#size_name", :name => "size[name]"
      assert_select "input#size_country", :name => "size[country]"
      assert_select "input#size_in", :name => "size[in]"
      assert_select "input#size_mm", :name => "size[mm]"
    end
  end
end
