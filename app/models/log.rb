class Log < ApplicationRecord
  belongs_to :object, polymorphic: true
end
