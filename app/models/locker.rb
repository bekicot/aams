class Locker < ApplicationRecord
  belongs_to :account
  belongs_to :location
end
