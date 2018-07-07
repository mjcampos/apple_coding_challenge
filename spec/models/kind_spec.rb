require "rails_helper"

RSpec.describe Kind, type: :model do
  subject { build(:kind) }

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
