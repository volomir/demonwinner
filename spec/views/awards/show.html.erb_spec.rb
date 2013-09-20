require 'spec_helper'

describe "awards/show" do
  before(:each) do
    @award = assign(:award, stub_model(Award,
      :competition_id => 1,
      :category_id => 2,
      :model_id => 3,
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Type/)
  end
end
