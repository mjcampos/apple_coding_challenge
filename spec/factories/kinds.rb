FactoryBot.define do
  factory :kind do
    sequence(:name) { |n| "Kind #{n}" }
    active true
  end
end
