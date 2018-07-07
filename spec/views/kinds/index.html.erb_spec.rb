require 'rails_helper'

RSpec.describe "kinds/index", type: :view do
  before do
    assign(:kinds, [create(:kind, name: "Test"), create(:kind, name: "Test again")])
  end

  it "renders a list of kinds" do
    render
    assert_select "tr>td", text: "Test", count: 1
    assert_select "tr>td", text: "Test again", count: 1
    assert_select "tr>td", text: true.to_s, count: 2
  end
end
