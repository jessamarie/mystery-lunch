Customer.destroy_all
Restaurant.destroy_all

jessa = Customer.create(
  firstname: "Jessa",
  lastname: "B",
  email: "Jessa@jessa.com",
  password: "password"
)

 plum_blossom = Restaurant.create(
  name: "Plum Blossom",
  email: "plum@blossom.com",
  password: "password"
)

kung_pao = plum_blossom.menu_items.create(
  name: "Kung Pao Chicken"
)

chao_mein = MenuItem.create(
   name: "Chao Mein",
   restaurant: plum_blossom
)

jessas_order = Order.create(customer: jessa)
jessas_order.order_items.create(menu_item: kung_pao, quantity: 1)
jessas_order.order_items.create(menu_item: chao_mein)
