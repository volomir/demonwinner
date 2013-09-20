require 'spec_helper'

describe "painters/show" do
  before(:each) do
    @painter = assign(:painter, stub_model(Painter,
      :name => "Name",
      :surname => "Surname",
      :nickname => "Nickname",
      :nationality => "Nationality"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Surname/)
    rendered.should match(/Nickname/)
    rendered.should match(/Nationality/)
  end
end
