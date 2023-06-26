class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        restaurants = Restaurant.all
        render json: restaurants
    end

    def show
        restaurant = find_restaurant
         render json: restaurant, include: :pizzas, status: :ok
    end

       def destroy
        restaurant = find_restaurant
            restaurant.destroy
            head :no_content
        end

        private
        def render_not_found_response
            render json: { error: "Restaurant not found" }, status: :not_found
        end

        def find_restaurant
            Restaurant.find_by(id: params[:id])
        end
end
