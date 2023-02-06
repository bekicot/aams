class Card < ApplicationRecord
  belongs_to :card_type
  belongs_to :user
  belongs_to :account
end
