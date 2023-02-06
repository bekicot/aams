FactoryBot.define do
  factory :asset do
    name { Faker::Device.model_name }
    location
    account
  end
end
