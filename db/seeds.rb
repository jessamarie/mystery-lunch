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
  description: "Chinese menu includes Thai & Japanese",
  address: "75446 plum way",
  restaurant: plum_blossom,
  profile_pic: "image.jpg"
)

kung_pao = plum_blossom_profile.menu_items.create(
  name: "Kung Pao Chicken",
  description: "Spicy stir-fry Chinese dish made with chicken, peanuts, vegetables, and chili peppers. with a hint of Kung Fu",
  image_url: "image.jpg"
)

chao_mein = plum_blossom_profile.menu_items.create(
   name: "Chao Mein",
   description: "Yummy, stir-fried noodles noodles made with soy sauce and sesame oil. Chao down!",
   image_url: "image.jpg"
)

lo_mein = plum_blossom_profile.menu_items.create(
   name: "Chao Mein",
   description: "Noodles made with soy sauce, sugar, sesame oil, ginger and Srirach. How lo can you go!",
   image_url: "image.jpg"
)

eggrolls = plum_blossom_profile.menu_items.create(
   name: "Egg Rolls",
   description: "Rolls of Eggs?",
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
  name: "Roast Beef Sandwich",
  description: "EWW",
  image_url: "image.jpg"
)

chicken_sandwich = arbys_profile.menu_items.create(
  name: "Crispy Chicken Sandwich",
  description: "Crispy Chicken with Honey Mustard. My favorite!",
  image_url: "image.jpg"
)

chocolate_milkshake = arbys_profile.menu_items.create(
  name: "Chocolate Milkshake",
  description: "The only flavor worth drinking",
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
  name: "Chimichanga",
  description: "Deep fried burrito with so much stuff inside.",
  image_url: "image.jpg"
)

tacos = dos_profile.menu_items.create(
  name: "Taco",
  description: "The orginal Americanized Mexican food",
  image_url: "image.jpg"
)

chimichanga = dos_profile.menu_items.create(
  name: "Chips and Guacamole",
  description: "The appetizer you fill yourself up with before the entree arrives!",
  image_url: "image.jpg"
)

chick_fil_a = Restaurant.create(
  email: "chick@fila.com",
  password: "password"
)

chick_fil_a_profile = RestaurantProfile.create(
  name: "Chick Fil A",
  description: "Chicken Heaven",
  address: "42 chicken is life highway",
  restaurant: chick_fil_a,
  profile_pic: "image.jpg"
)

crispy_chicken_sandwich = chick_fil_a_profile.menu_items.create(
  name: "The Original Chicken Sandwich",
  description: "Crispy chicken sandwich made in heaven",
  image_url: "image.jpg"
)

chick_fil_a_profile.menu_items.create(
  name: "Chicken Feet",
  description: "All bones no meat",
  image_url: "image.jpg"
)

wise_aunt_sallys = Restaurant.create(
  email: "aunt@sallys.com",
  password: "password"
)

wise_aunt_sallys_profile = RestaurantProfile.create(
  name: "Wise Aunt Sally's",
  description: "Aunt Sally's World Cooking",
  address: "4342 What am I eating rn rd",
  restaurant: wise_aunt_sallys,
  profile_pic: "image.jpg"
)

crispy_tarantuala = wise_aunt_sallys_profile.menu_items.create(
  name: "Crispy Tarantula",
  description: "Who doesn't like spiders?",
  image_url: "image.jpg"
)

wise_aunt_sallys_profile.menu_items.create(
  name: "Tuna Eyeballs",
  description: "Seafood lovers are weird",
  image_url: "image.jpg"
)

wise_aunt_sallys_profile.menu_items.create(
  name: "White Ant Eggs Soup",
  description: "Not only do you step on them, but you have to eat their babies, too?!",
  image_url: "image.jpg"
)

wise_aunt_sallys_profile.menu_items.create(
  name: "Jellied Moose Nose",
  description: "Yuum, boogers",
  image_url: "image.jpg"
)
