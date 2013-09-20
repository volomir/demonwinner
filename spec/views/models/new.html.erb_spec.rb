require 'spec_helper'

describe "models/new" do
  before(:each) do
    assign(:model, stub_model(Model,
      :painter_id => 1,
      :title => "MyString",
      :image_url => "MyString"
    ).as_new_record)
  end

  it "renders new model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", models_path, "post" do
      assert_select "input#model_painter_id[name=?]", "model[painter_id]"
      assert_select "input#model_title[name=?]", "model[title]"
      assert_select "input#model_image_url[name=?]", "model[image_url]"
    end
  end
end
