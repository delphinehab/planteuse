class Plant < ApplicationRecord
  belongs_to :category
  has_one :booking
end
