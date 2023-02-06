FactoryBot.define do
  factory :card_type do
    name { ["Mifare", "HID"].sample }
  end
end
