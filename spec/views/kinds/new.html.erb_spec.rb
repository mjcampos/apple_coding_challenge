require 'rails_helper'

RSpec.describe "kinds/new", type: :view do
  before do
    assign(:kind, build(:kind))
  end

  it "renders new kind form" do
    render

    assert_select "form[action=?][method=?]", kinds_path, "post" do
      assert_select "input[name=?]", "kind[name]"
      assert_select "input[name=?]", "kind[active]"
    end
  end
end
