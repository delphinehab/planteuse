class Product < ApplicationRecord
  has_one :booking
  belongs_to :plant
end
