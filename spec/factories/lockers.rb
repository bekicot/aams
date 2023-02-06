FactoryBot.define do
  factory :locker do
    mode { 1 }
    account
    serial_number { Faker::Number.number(digits: 10) }
  end
end
