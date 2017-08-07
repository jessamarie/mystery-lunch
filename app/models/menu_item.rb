class MenuItem < ApplicationRecord
  belongs_to :restaurant_profile
  has_many :order_items
  has_many :orders, through: :order_items
end
