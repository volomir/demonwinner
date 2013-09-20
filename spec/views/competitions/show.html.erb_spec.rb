require 'spec_helper'

describe "competitions/show" do
  before(:each) do
    @competition = assign(:competition, stub_model(Competition,
      :year => 1,
      :country => "Country",
      :city => "City"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Country/)
    rendered.should match(/City/)
  end
end
