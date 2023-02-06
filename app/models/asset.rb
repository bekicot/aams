class Asset < ApplicationRecord
  belongs_to :location
  belongs_to :account
end
