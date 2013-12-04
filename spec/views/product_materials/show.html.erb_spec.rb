require 'spec_helper'

describe "product_materials/show" do
  before(:each) do
    @product_material = assign(:product_material, stub_model(ProductMaterial,
      :product_id => 1,
      :material_id => 1,
      :g => 1,
      :oz => 1
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
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
