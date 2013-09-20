require 'spec_helper'

describe "competitions/new" do
  before(:each) do
    assign(:competition, stub_model(Competition,
      :year => 1,
      :country => "MyString",
      :city => "MyString"
    ).as_new_record)
  end

  it "renders new competition form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", competitions_path, "post" do
      assert_select "input#competition_year[name=?]", "competition[year]"
      assert_select "input#competition_country[name=?]", "competition[country]"
      assert_select "input#competition_city[name=?]", "competition[city]"
    end
  end
end
