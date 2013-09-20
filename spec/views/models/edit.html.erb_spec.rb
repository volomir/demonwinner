require 'spec_helper'

describe "models/edit" do
  before(:each) do
    @model = assign(:model, stub_model(Model,
      :painter_id => 1,
      :title => "MyString",
      :image_url => "MyString"
    ))
  end

  it "renders the edit model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", model_path(@model), "post" do
      assert_select "input#model_painter_id[name=?]", "model[painter_id]"
      assert_select "input#model_title[name=?]", "model[title]"
      assert_select "input#model_image_url[name=?]", "model[image_url]"
    end
  end
end
