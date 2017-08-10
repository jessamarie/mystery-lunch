class Order < ApplicationRecord

  belongs_to :cart
  has_many :order_items

  validates :delivery_type, :payment_type, presence: true

  DELIVERY_TYPES = ["Carryout"]
  PAYMENT_TYPES  = ["Cash", "Credit Card"]
end
