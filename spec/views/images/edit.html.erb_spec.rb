require 'spec_helper'

describe "images/edit" do
  before(:each) do
    @image = assign(:image, stub_model(Image,
      :product_id => 1,
      :name => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => images_path(@image), :method => "post" do
      assert_select "input#image_product_id", :name => "image[product_id]"
      assert_select "input#image_name", :name => "image[name]"
      assert_select "input#image_url", :name => "image[url]"
    end
  end
end
