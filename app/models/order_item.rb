class OrderItem < ApplicationRecord
  # Indentation
  belongs_to :order
  belongs_to :cart_item
end
