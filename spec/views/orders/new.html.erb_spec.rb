require 'spec_helper'

describe "orders/new" do
  before(:each) do
    assign(:order, stub_model(Order,
      :customer_id => 1,
      :discount => "9.99",
      :tax => "9.99",
      :shippingFee => "9.99",
      :total => "9.99",
      :payment_id => 1,
      :status => "MyString"
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path, :method => "post" do
      assert_select "input#order_customer_id", :name => "order[customer_id]"
      assert_select "input#order_discount", :name => "order[discount]"
      assert_select "input#order_tax", :name => "order[tax]"
      assert_select "input#order_shippingFee", :name => "order[shippingFee]"
      assert_select "input#order_total", :name => "order[total]"
      assert_select "input#order_payment_id", :name => "order[payment_id]"
      assert_select "input#order_status", :name => "order[status]"
    end
  end
end
