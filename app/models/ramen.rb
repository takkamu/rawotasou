class Ramen < ApplicationRecord
  belongs_to :customer
  has_one_attached :image
end
