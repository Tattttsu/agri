FactoryBot.define do
  factory :farm do
    sequence(:name) { |n| "name#{n}" }
    sequence(:address) { |n| "address#{n}" }
    sequence(:feature) { |n| "feature#{n}" }
  end
end
