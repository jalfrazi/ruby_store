require 'spec_helper'

describe "product_materials/index" do
  before(:each) do
    assign(:product_materials, [
      stub_model(ProductMaterial,
        :product_id => 1,
        :material_id => 1,
        :g => 1,
        :oz => 1
      ),
      stub_model(ProductMaterial,
        :product_id => 1,
        :material_id => 1,
        :g => 1,
        :oz => 1
      )
    ])
  end

  it "renders a list of product_materials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
