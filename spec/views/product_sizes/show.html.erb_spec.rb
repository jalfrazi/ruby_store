require 'spec_helper'

describe "product_sizes/show" do
  before(:each) do
    @product_size = assign(:product_size, stub_model(ProductSize,
      :product_id => 1,
      :size_id => 1,
      :quantity => 1
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
  end
end
