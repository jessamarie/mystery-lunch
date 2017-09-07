class Cart < ApplicationRecord
  has_many :cart_items

  def add_menu_item(menu_item_params)
    # Indentation
    new_item = cart_items.create(menu_item_id: menu_item_params[:menu_item][:menu_item_id],
                                cart_id: self.id)
    new_item
  end

  def cart_size
    size = 0
    self.cart_items.each do |cart_item|
      size += 1
    end
    size
  end


  # Commented code should be kept in a feature branch until ready,
  # and not pushed to `master`
  # def total_price
  #   cart_items.to_a.sum { |item| item.total_price }
  # end
end
