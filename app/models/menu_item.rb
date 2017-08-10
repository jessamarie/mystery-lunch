class MenuItem < ApplicationRecord
  belongs_to :restaurant_profile

  has_many :cart_items
  validates :name, :description, presence: true
end
