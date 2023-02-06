class LockerCompatibleCard < ApplicationRecord
  belongs_to :locker
  belongs_to :card_type
end
