require 'spec_helper'

describe "painters/edit" do
  before(:each) do
    @painter = assign(:painter, stub_model(Painter,
      :name => "MyString",
      :surname => "MyString",
      :nickname => "MyString",
      :nationality => "MyString"
    ))
  end

  it "renders the edit painter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", painter_path(@painter), "post" do
      assert_select "input#painter_name[name=?]", "painter[name]"
      assert_select "input#painter_surname[name=?]", "painter[surname]"
      assert_select "input#painter_nickname[name=?]", "painter[nickname]"
      assert_select "input#painter_nationality[name=?]", "painter[nationality]"
    end
  end
end
