FactoryBot.define do
  factory :card do
    uid { Faker::Number.number(digits: 10) }
    card_type
    default { false }
    user
    account
  end
end
