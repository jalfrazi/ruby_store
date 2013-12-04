require 'spec_helper'

describe "sizes/index" do
  before(:each) do
    assign(:sizes, [
      stub_model(Size,
        :type_id => 1,
        :name => "Name",
        :us => "Us",
        :uk => "Uk",
        :cn => "Cn",
        :ind => "Ind",
        :it => "It",
        :inch => "9.99",
        :mm => "9.99"
      ),
      stub_model(Size,
        :type_id => 1,
        :name => "Name",
        :us => "Us",
        :uk => "Uk",
        :cn => "Cn",
        :ind => "Ind",
        :it => "It",
        :inch => "9.99",
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
    assert_select "tr>td", :text => "Us".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Uk".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cn".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ind".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "It".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
