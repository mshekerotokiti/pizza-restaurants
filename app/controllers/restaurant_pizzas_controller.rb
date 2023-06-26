class RestaurantPizzasController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def create
        restaurant_pizzas = RestaurantPizza.create(restaurant_pizza_params)
        render json: restaurant_pizzas, status: :created
    end

    private
    def restaurant_pizza_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end

    def render_not_found_response
        render json: {error: "Validation errors"}, status: :unprocessable_entity
    end

end
