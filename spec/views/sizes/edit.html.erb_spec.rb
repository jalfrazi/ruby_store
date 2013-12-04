require 'spec_helper'

describe "sizes/edit" do
  before(:each) do
    @size = assign(:size, stub_model(Size,
      :type_id => 1,
      :name => "MyString",
      :us => "MyString",
      :uk => "MyString",
      :cn => "MyString",
      :ind => "MyString",
      :it => "MyString",
      :inch => "9.99",
      :mm => "9.99"
    ))
  end

  it "renders the edit size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sizes_path(@size), :method => "post" do
      assert_select "input#size_type_id", :name => "size[type_id]"
      assert_select "input#size_name", :name => "size[name]"
      assert_select "input#size_us", :name => "size[us]"
      assert_select "input#size_uk", :name => "size[uk]"
      assert_select "input#size_cn", :name => "size[cn]"
      assert_select "input#size_ind", :name => "size[ind]"
      assert_select "input#size_it", :name => "size[it]"
      assert_select "input#size_inch", :name => "size[inch]"
      assert_select "input#size_mm", :name => "size[mm]"
    end
  end
end
