require 'spec_helper'

describe "product_materials/new" do
  before(:each) do
    assign(:product_material, stub_model(ProductMaterial,
      :product_id => 1,
      :material_id => 1,
      :g => 1,
      :oz => 1
    ).as_new_record)
  end

  it "renders new product_material form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => product_materials_path, :method => "post" do
      assert_select "input#product_material_product_id", :name => "product_material[product_id]"
      assert_select "input#product_material_material_id", :name => "product_material[material_id]"
      assert_select "input#product_material_g", :name => "product_material[g]"
      assert_select "input#product_material_oz", :name => "product_material[oz]"
    end
  end
end
