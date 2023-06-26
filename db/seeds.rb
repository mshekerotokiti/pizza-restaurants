# seeds.rb
puts "Seeding data"
# Restaurants
Restaurant.create(name: "Bella Italia Trattoria", address: "123 Main St")
Restaurant.create(name: "Pizzeria da Vinci", address: "456 Elm St")
Restaurant.create(name: "The Pizza Oven", address: "789 Oak St")
Restaurant.create(name: "Mama Mia's Pizzeria", address: "321 Maple Ave")
Restaurant.create(name: "Tony's Trattoria", address: "654 Pine Rd")

# Pizzas
Pizza.create(name: "Margherita Supreme", ingredients: "Tomato sauce, mozzarella cheese, basil")
Pizza.create(name: "Pepperoni Passion", ingredients: "Tomato sauce, mozzarella cheese, pepperoni")
Pizza.create(name: "BBQ Chicken Deluxe", ingredients: "BBQ sauce, mozzarella cheese, grilled chicken, red onions")
Pizza.create(name: "Veggie Delight", ingredients: "Tomato sauce, mozzarella cheese, bell peppers, mushrooms, olives")
Pizza.create(name: "Meat Lovers' Paradise", ingredients: "Tomato sauce, mozzarella cheese, pepperoni, sausage, bacon")

# Restaurant Pizzas
RestaurantPizza.create(pizza: Pizza.first, restaurant: Restaurant.first, price: 10)
RestaurantPizza.create(pizza: Pizza.second, restaurant: Restaurant.second, price: 12)
RestaurantPizza.create(pizza: Pizza.third, restaurant: Restaurant.third, price: 15)
RestaurantPizza.create(pizza: Pizza.fourth, restaurant: Restaurant.fourth, price: 11)
RestaurantPizza.create(pizza: Pizza.fifth, restaurant: Restaurant.fifth, price: 13)
puts "done seeding"