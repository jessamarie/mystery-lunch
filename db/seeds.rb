OrderItem.destroy_all
Order.destroy_all
MenuItem.destroy_all
Customer.destroy_all
Restaurant.destroy_all

jessa = Customer.create(
  email: "Jessa@jessa.com",
  password: "password"
)

jessas_profile = CustomerProfile.create(
  firstname: "Jessa",
  lastname: "B",
  about: "A red head",
  interests: "Chimichangas",
  customer: jessa
)

plum_blossom = Restaurant.create(
  email: "plum@blossom.com",
  password: "password"
)

plum_blossom_profile = RestaurantProfile.create(
  name: "Plum Blossom",
  description: "A yummy chinese restaurant",
  address: "75446 plum way",
  restaurant: plum_blossom
)

kung_pao = plum_blossom_profile.menu_items.create(
  name: "Kung Pao Chicken"
)

chao_mein = MenuItem.create(
   name: "Chao Mein",
   restaurant_profile: plum_blossom_profile
)

jessas_order = Order.create(customer: jessa)
jessas_order.order_items.create(menu_item: kung_pao, quantity: 1)
jessas_order.order_items.create(menu_item: chao_mein)

arbys = Restaurant.create(
  email: "arbys@arbys.com",
  password: "password"
)

arbys_profile = RestaurantProfile.create(
  name: "Arby's",
  description: "fast food restaurant",
  address: "43342 arbys blvd",
  restaurant: arbys
)

roast_beef = arbys_profile.menu_items.create(
  name: "roast_beef sandwich"
)

chicken_sandwich = arbys_profile.menu_items.create(
  name: "chicken sandwich"
)

chocolate_milkshake = arbys_profile.menu_items.create(
  name: "chocolate_milkshake"
)

jessas_order.order_items.create(menu_item: chocolate_milkshake)

dos_amigos = Restaurant.create(
  email: "dos@amigos.com",
  password: "password"
)

dos_profile = RestaurantProfile.create(
  name: "Dos Amigos",
  description: "A yummy mexicano restaurant",
  address: "75446 nouno amgios",
  restaurant: dos_amigos
)


chimichanga = dos_profile.menu_items.create(
  name: "chimichanga"
)

jessas_order.order_items.create(menu_item: chimichanga)
