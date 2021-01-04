class Recipe < ApplicationRecord
  belongs_to :baker
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  validates_presence_of :name
  validates :number_ingredients, :bake_time, :oven_temp, numericality: { greater_than: 0 }
end
