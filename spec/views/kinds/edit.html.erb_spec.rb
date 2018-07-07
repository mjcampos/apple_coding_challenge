require 'rails_helper'

RSpec.describe "kinds/edit", type: :view do
  before do
    @kind = create(:kind)
  end

  it "renders the edit kind form" do
    render

    assert_select "form[action=?][method=?]", kind_path(@kind), "post" do
      assert_select "input[name=?]", "kind[name]"
      assert_select "input[name=?]", "kind[active]"
    end
  end
end
