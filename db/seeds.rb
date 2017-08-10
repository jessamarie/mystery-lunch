OrderItem.destroy_all
Order.destroy_all
CartItem.destroy_all
Cart.destroy_all
MenuItem.destroy_all
Customer.destroy_all
Restaurant.destroy_all

jessa = Customer.create(
  email: "Jessa@jessa.com",
  password: "password"
)

plum_blossom = Restaurant.create(
  email: "plum@blossom.com",
  password: "password",
)

plum_blossom_profile = RestaurantProfile.create(
  name: "Plum Blossom",
  description: "A yummy chinese restaurant",
  address: "75446 plum way",
  restaurant: plum_blossom,
  profile_pic: "image.jpg"
)

kung_pao = plum_blossom_profile.menu_items.create(
  name: "Kung Pao Chicken",
  description: "Chicken with some kung_pao",
  image_url: "image.jpg"
)

chao_mein = plum_blossom_profile.menu_items.create(
   name: "Chao Mein",
   description: "Yummy noodles",
   image_url: "image.jpg"
)

arbys = Restaurant.create(
  email: "arbys@arbys.com",
  password: "password",
)

arbys_profile = RestaurantProfile.create(
  name: "Arby's",
  description: "fast food restaurant",
  address: "43342 arbys blvd",
  restaurant: arbys,
  profile_pic: "image.jpg"
)

roast_beef = arbys_profile.menu_items.create(
  name: "roast beef sandwich",
  description: "Roast beef Ew",
  image_url: "image.jpg"
)

chicken_sandwich = arbys_profile.menu_items.create(
  name: "chicken sandwich",
  description: "Crispy Chicken with Honey Mustard",
  image_url: "image.jpg"
)

chocolate_milkshake = arbys_profile.menu_items.create(
  name: "chocolate_milkshake",
  description: "Chocolate Goodness",
  image_url: "image.jpg"
)

dos_amigos = Restaurant.create(
  email: "dos@amigos.com",
  password: "password"
)

dos_profile = RestaurantProfile.create(
  name: "Dos Amigos",
  description: "A yummy mexicano restaurant",
  address: "75446 nouno amgios",
  restaurant: dos_amigos,
  profile_pic: "image.jpg"
)

chimichanga = dos_profile.menu_items.create(
  name: "chimichanga",
  description: "deep fried burrito",
  image_url: "image.jpg"
)
