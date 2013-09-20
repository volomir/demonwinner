require 'spec_helper'

describe "painters/index" do
  before(:each) do
    assign(:painters, [
      stub_model(Painter,
        :name => "Name",
        :surname => "Surname",
        :nickname => "Nickname",
        :nationality => "Nationality"
      ),
      stub_model(Painter,
        :name => "Name",
        :surname => "Surname",
        :nickname => "Nickname",
        :nationality => "Nationality"
      )
    ])
  end

  it "renders a list of painters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => "Nationality".to_s, :count => 2
  end
end
