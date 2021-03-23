FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "User #{n}" }
    sequence(:email) { |n| "user#{n}@maino.com.br" }
    password { SecureRandom.hex }
  end
end
