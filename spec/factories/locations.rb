FactoryBot.define do
  factory :location do
    name { Faker::Address.city }
    account
  end
end
