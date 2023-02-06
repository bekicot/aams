FactoryBot.define do
  factory :user do
    email { Faker::Internet.email domain: "agilestudio.id" }    
  end
end
