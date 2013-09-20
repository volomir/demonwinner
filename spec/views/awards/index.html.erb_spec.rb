require 'spec_helper'

describe "awards/index" do
  before(:each) do
    assign(:awards, [
      stub_model(Award,
        :competition_id => 1,
        :category_id => 2,
        :model_id => 3,
        :award_type => "Type"
      ),
      stub_model(Award,
        :competition_id => 1,
        :category_id => 2,
        :model_id => 3,
        :award_type => "Type"
      )
    ])
  end

  it "renders a list of awards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
