require 'spec_helper'

describe "sizes/index" do
  before(:each) do
    assign(:sizes, [
      stub_model(Size,
        :product_id => 1,
        :name => "Name",
        :country => "Country",
        :in => "9.99",
        :mm => "9.99"
      ),
      stub_model(Size,
        :product_id => 1,
        :name => "Name",
        :country => "Country",
        :in => "9.99",
        :mm => "9.99"
      )
    ])
  end

  it "renders a list of sizes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
