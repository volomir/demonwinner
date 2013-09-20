require 'spec_helper'

describe "competitions/index" do
  before(:each) do
    assign(:competitions, [
      stub_model(Competition,
        :year => 1,
        :country => "Country",
        :city => "City"
      ),
      stub_model(Competition,
        :year => 1,
        :country => "Country",
        :city => "City"
      )
    ])
  end

  it "renders a list of competitions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
  end
end
