require 'spec_helper'

describe "addresses/edit" do
  before(:each) do
    @address = assign(:address, stub_model(Address,
      :customer_id => 1,
      :address1 => "MyString",
      :address2 => "MyString",
      :index => "MyString",
      :town => "MyString",
      :county => "MyString",
      :country => "MyString"
    ))
  end

  it "renders the edit address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => addresses_path(@address), :method => "post" do
      assert_select "input#address_customer_id", :name => "address[customer_id]"
      assert_select "input#address_address1", :name => "address[address1]"
      assert_select "input#address_address2", :name => "address[address2]"
      assert_select "input#address_index", :name => "address[index]"
      assert_select "input#address_town", :name => "address[town]"
      assert_select "input#address_county", :name => "address[county]"
      assert_select "input#address_country", :name => "address[country]"
    end
  end
end
