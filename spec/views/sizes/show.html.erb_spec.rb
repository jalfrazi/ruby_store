require 'spec_helper'

describe "sizes/show" do
  before(:each) do
    @size = assign(:size, stub_model(Size,
      :type_id => 1,
      :name => "Name",
      :us => "Us",
      :uk => "Uk",
      :cn => "Cn",
      :ind => "Ind",
      :it => "It",
      :inch => "9.99",
      :mm => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Us/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Uk/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cn/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ind/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/It/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
  end
end
