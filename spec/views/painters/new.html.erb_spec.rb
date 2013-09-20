require 'spec_helper'

describe "painters/new" do
  before(:each) do
    assign(:painter, stub_model(Painter,
      :name => "MyString",
      :surname => "MyString",
      :nickname => "MyString",
      :nationality => "MyString"
    ).as_new_record)
  end

  it "renders new painter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", painters_path, "post" do
      assert_select "input#painter_name[name=?]", "painter[name]"
      assert_select "input#painter_surname[name=?]", "painter[surname]"
      assert_select "input#painter_nickname[name=?]", "painter[nickname]"
      assert_select "input#painter_nationality[name=?]", "painter[nationality]"
    end
  end
end
