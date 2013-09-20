require 'spec_helper'

describe "awards/new" do
  before(:each) do
    assign(:award, stub_model(Award,
      :competition_id => 1,
      :category_id => 1,
      :model_id => 1,
      :type => ""
    ).as_new_record)
  end

  it "renders new award form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", awards_path, "post" do
      assert_select "input#award_competition_id[name=?]", "award[competition_id]"
      assert_select "input#award_category_id[name=?]", "award[category_id]"
      assert_select "input#award_model_id[name=?]", "award[model_id]"
      assert_select "input#award_type[name=?]", "award[type]"
    end
  end
end
