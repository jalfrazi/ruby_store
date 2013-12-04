require 'spec_helper'

describe "images/new" do
  before(:each) do
    assign(:image, stub_model(Image,
      :product_id => 1,
      :name => "MyString",
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => images_path, :method => "post" do
      assert_select "input#image_product_id", :name => "image[product_id]"
      assert_select "input#image_name", :name => "image[name]"
      assert_select "input#image_url", :name => "image[url]"
    end
  end
end
