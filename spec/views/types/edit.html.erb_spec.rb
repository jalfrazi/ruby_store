require 'spec_helper'

describe "types/edit" do
  before(:each) do
    @type = assign(:type, stub_model(Type,
      :product_id => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => types_path(@type), :method => "post" do
      assert_select "input#type_product_id", :name => "type[product_id]"
      assert_select "input#type_name", :name => "type[name]"
    end
  end
end
