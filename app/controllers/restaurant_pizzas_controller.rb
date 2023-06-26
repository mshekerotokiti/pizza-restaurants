class RestaurantPizzasController < ApplicationController
    def create
        restaurant_pizzas = RestaurantPizza.create(restaurant_pizza_params)
     if restaurant_pizzas
           render json: restaurant_pizzas, status: :created
     else
        render json: {error: "Validation errors"}, status: :unprocessable_entity
     end
    end

    private
    def restaurant_pizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end

end
