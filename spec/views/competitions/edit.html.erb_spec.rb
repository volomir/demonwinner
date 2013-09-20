require 'spec_helper'

describe "competitions/edit" do
  before(:each) do
    @competition = assign(:competition, stub_model(Competition,
      :year => 1,
      :country => "MyString",
      :city => "MyString"
    ))
  end

  it "renders the edit competition form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", competition_path(@competition), "post" do
      assert_select "input#competition_year[name=?]", "competition[year]"
      assert_select "input#competition_country[name=?]", "competition[country]"
      assert_select "input#competition_city[name=?]", "competition[city]"
    end
  end
end
