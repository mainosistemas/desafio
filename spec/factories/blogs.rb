FactoryBot.define do
  factory :blog do
    user
    title { "My blog" }
    sequence(:slug) { |n| "blog#{n}" }
  end
end
