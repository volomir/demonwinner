require 'spec_helper'

describe "photos/new" do
  before(:each) do
    assign(:photo, stub_model(Photo,
      :model_id => 1,
      :order => 1,
      :file => "MyString"
    ).as_new_record)
  end

  it "renders new photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", photos_path, "post" do
      assert_select "input#photo_model_id[name=?]", "photo[model_id]"
      assert_select "input#photo_order[name=?]", "photo[order]"
      assert_select "input#photo_file[name=?]", "photo[file]"
    end
  end
end
