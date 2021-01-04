require 'rails_helper'

describe Ingredient do
  describe 'validations' do
    it { should validate_presence_of :name }
  end
  
  describe 'relationships' do
    it { should have_many :recipe_ingredients }
    it { should have_many(:recipes).through :recipe_ingredients}
  end
end
