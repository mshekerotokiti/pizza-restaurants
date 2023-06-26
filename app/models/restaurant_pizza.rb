class RestaurantPizza < ApplicationRecord
  belongs_to :pizza
  belongs_to :restaurant

  validates :pizza_id, :restaurant_id, presence: true
  validates :price, presence: true, inclusion: { in: (1..30) }
end
