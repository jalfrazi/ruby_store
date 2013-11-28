require 'spec_helper'

describe "addresses/new" do
  before(:each) do
    assign(:address, stub_model(Address,
      :customer_id => 1,
      :address1 => "MyString",
      :address2 => "MyString",
      :index => "MyString",
      :town => "MyString",
      :county => "MyString",
      :country => "MyString"
    ).as_new_record)
  end

  it "renders new address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => addresses_path, :method => "post" do
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
